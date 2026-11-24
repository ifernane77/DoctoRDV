-- Contrôles en lecture seule à lancer après l'import, puis après un second import.

-- Attendu : 7 tables InnoDB avec id comme clé primaire.
SELECT COUNT(*) AS tables_avec_pk_attendues, COUNT(*) = 7 AS ok
FROM information_schema.TABLES AS t
JOIN information_schema.STATISTICS AS s
    ON s.TABLE_SCHEMA = t.TABLE_SCHEMA AND s.TABLE_NAME = t.TABLE_NAME
WHERE t.TABLE_SCHEMA = 'doctordv'
  AND t.TABLE_NAME IN ('roles', 'users', 'specialites', 'praticiens',
                       'disponibilites', 'rendez_vous', 'journal_actions')
  AND t.ENGINE = 'InnoDB'
  AND s.INDEX_NAME = 'PRIMARY' AND s.COLUMN_NAME = 'id'
  AND s.SEQ_IN_INDEX = 1
  AND NOT EXISTS (
    SELECT 1 FROM information_schema.STATISTICS AS extra
    WHERE extra.TABLE_SCHEMA = s.TABLE_SCHEMA AND extra.TABLE_NAME = s.TABLE_NAME
      AND extra.INDEX_NAME = 'PRIMARY' AND extra.SEQ_IN_INDEX > 1
);

-- Attendu : 9 clés étrangères, dont la FK composée
-- qui impose que le praticien du rendez-vous soit celui du créneau.
SELECT TABLE_NAME, CONSTRAINT_NAME,
       GROUP_CONCAT(COLUMN_NAME ORDER BY ORDINAL_POSITION) AS colonnes,
       REFERENCED_TABLE_NAME,
       GROUP_CONCAT(REFERENCED_COLUMN_NAME ORDER BY ORDINAL_POSITION) AS colonnes_referencees
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'doctordv'
  AND TABLE_NAME IN ('users', 'praticiens', 'disponibilites', 'rendez_vous', 'journal_actions')
  AND REFERENCED_TABLE_NAME IS NOT NULL
GROUP BY TABLE_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME
ORDER BY TABLE_NAME, CONSTRAINT_NAME;

-- Attendu : 6 garanties d'unicité, dont disponibilite_id seul.
SELECT TABLE_NAME, GROUP_CONCAT(COLUMN_NAME ORDER BY SEQ_IN_INDEX) AS colonnes_uniques
FROM information_schema.STATISTICS
WHERE TABLE_SCHEMA = 'doctordv'
  AND NON_UNIQUE = 0 AND INDEX_NAME <> 'PRIMARY'
  AND TABLE_NAME IN ('roles', 'users', 'specialites', 'praticiens',
                     'disponibilites', 'rendez_vous')
GROUP BY TABLE_NAME, INDEX_NAME
HAVING (TABLE_NAME, colonnes_uniques) IN (
    ('roles', 'nom'), ('users', 'email'), ('specialites', 'nom'),
    ('praticiens', 'user_id'),
    ('disponibilites', 'praticien_id,date_disponibilite,heure_debut,heure_fin'),
    ('rendez_vous', 'disponibilite_id')
)
ORDER BY TABLE_NAME;

-- Attendu : 1 sur chaque colonne ok de ce résultat.
SELECT COUNT(*) = 3 AS roles_v1_ok
FROM doctordv.roles
WHERE nom IN ('patient', 'praticien', 'administrateur');

SELECT COUNT(*) = 2 AS comptes_demo_ok
FROM doctordv.users AS u
JOIN doctordv.roles AS r ON r.id = u.role_id
WHERE (u.email, r.nom) IN (
    ('patient.demo@example.invalid', 'patient'),
    ('praticien.demo@example.invalid', 'praticien')
)
AND CHAR_LENGTH(u.mot_de_passe) = 60
AND LEFT(u.mot_de_passe, 4) = '$2y$';

-- Attendu sur le jeu de démo intact : deux lignes, à 09:00 (disponible,
-- sans rendez-vous) et à 09:30 (réservé, confirmé, journalisé une fois).
-- Les identifiants et le nombre de lignes restent stables après réimport.
SELECT d.id AS creneau_id, d.date_disponibilite, d.heure_debut, d.heure_fin,
       s.nom AS specialite, d.statut AS statut_creneau, rv.id AS rendez_vous_id,
       rv.statut AS statut_rendez_vous, patient.email AS patient,
       (SELECT COUNT(*) FROM doctordv.journal_actions AS j
        WHERE j.rendez_vous_id = rv.id AND j.user_id = patient.id
          AND j.action = 'creation') AS creations_journalisees
FROM doctordv.disponibilites AS d
JOIN doctordv.praticiens AS p ON p.id = d.praticien_id
JOIN doctordv.users AS praticien ON praticien.id = p.user_id
JOIN doctordv.specialites AS s ON s.id = p.specialite_id
LEFT JOIN doctordv.rendez_vous AS rv ON rv.disponibilite_id = d.id AND rv.praticien_id = p.id
LEFT JOIN doctordv.users AS patient ON patient.id = rv.patient_id
WHERE praticien.email = 'praticien.demo@example.invalid'
  AND d.date_disponibilite = '2027-05-03'
  AND (d.heure_debut, d.heure_fin) IN (
      ('09:00:00', '09:30:00'), ('09:30:00', '10:00:00')
  )
ORDER BY d.heure_debut;
