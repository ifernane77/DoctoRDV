-- Base DoctoRDV Web V1 pour MariaDB / XAMPP.
CREATE DATABASE IF NOT EXISTS doctordv
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE doctordv;

-- Définition SQL-01 conservée, y compris le type INT signé de l'identifiant.
CREATE TABLE IF NOT EXISTS roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    role_id INT NOT NULL,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(254) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL,
    telephone VARCHAR(25),
    date_creation DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_users_role FOREIGN KEY (role_id) REFERENCES roles (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS specialites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS praticiens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    specialite_id INT NOT NULL,
    description TEXT,
    CONSTRAINT fk_praticiens_user FOREIGN KEY (user_id) REFERENCES users (id),
    CONSTRAINT fk_praticiens_specialite
        FOREIGN KEY (specialite_id) REFERENCES specialites (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS disponibilites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    praticien_id INT NOT NULL,
    date_disponibilite DATE NOT NULL,
    heure_debut TIME NOT NULL,
    heure_fin TIME NOT NULL,
    statut ENUM('disponible', 'reserve', 'annule') NOT NULL DEFAULT 'disponible',
    CONSTRAINT ck_disponibilites_heures CHECK (heure_fin > heure_debut),
    CONSTRAINT uq_disponibilites_creneau
        UNIQUE (praticien_id, date_disponibilite, heure_debut, heure_fin),
    CONSTRAINT uq_disponibilites_id_praticien UNIQUE (id, praticien_id),
    CONSTRAINT fk_disponibilites_praticien
        FOREIGN KEY (praticien_id) REFERENCES praticiens (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Deux insertions concurrentes pour le même créneau risquent de passer
-- toutes les deux une vérification préalable de disponibilité.
-- L'analyse prévoit de modifier les statuts à l'annulation sans dire si
-- le créneau est rouvert. Le schéma prévu limite le créneau à un seul
-- rendez-vous. UNIQUE applique cette limite, même si le rendez-vous a
-- été annulé et conservé. La réouverture avec historique reste à valider.
CREATE TABLE IF NOT EXISTS rendez_vous (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    praticien_id INT NOT NULL,
    disponibilite_id INT NOT NULL UNIQUE,
    statut ENUM('confirme', 'annule', 'termine') NOT NULL DEFAULT 'confirme',
    date_creation DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    date_modification DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_rendez_vous_patient
        FOREIGN KEY (patient_id) REFERENCES users (id),
    CONSTRAINT fk_rendez_vous_praticien
        FOREIGN KEY (praticien_id) REFERENCES praticiens (id),
    CONSTRAINT fk_rendez_vous_disponibilite
        FOREIGN KEY (disponibilite_id, praticien_id)
        REFERENCES disponibilites (id, praticien_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS journal_actions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    rendez_vous_id INT,
    action ENUM('creation', 'modification', 'annulation') NOT NULL,
    date_action DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_journal_actions_user FOREIGN KEY (user_id) REFERENCES users (id),
    CONSTRAINT fk_journal_actions_rendez_vous
        FOREIGN KEY (rendez_vous_id) REFERENCES rendez_vous (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Les clés étrangères vérifient les liens. Le rôle de chaque compte lié,
-- les droits d'accès, les chevauchements entre créneaux distincts et la
-- mise à jour conjointe des statuts et du journal relèvent des traitements métier.

START TRANSACTION;

INSERT INTO roles (nom)
SELECT v.nom
FROM (
    SELECT 'patient' AS nom
    UNION ALL SELECT 'praticien'
    UNION ALL SELECT 'administrateur'
) AS v
WHERE NOT EXISTS (SELECT 1 FROM roles AS r WHERE r.nom = v.nom);

-- Adresses réservées à la démonstration et hachages de secrets aléatoires non conservés.
INSERT INTO users (role_id, nom, prenom, email, mot_de_passe)
SELECT r.id, 'Exemple', 'Camille', 'patient.demo@example.invalid', '$2y$10$1bKMq2JJLrcrPInc309rZOgsbWJPIy6e/QwLfyAXggA7vblCWmI5e'
FROM roles AS r
WHERE r.nom = 'patient'
  AND NOT EXISTS (SELECT 1 FROM users WHERE email = 'patient.demo@example.invalid');

INSERT INTO users (role_id, nom, prenom, email, mot_de_passe)
SELECT r.id, 'Exemple', 'Alex', 'praticien.demo@example.invalid', '$2y$10$mYeiuGTbDMC0IOqMsK8dseaFFGShQqo8yl/BN8I4IsOF9cO8CxrDm'
FROM roles AS r
WHERE r.nom = 'praticien'
  AND NOT EXISTS (SELECT 1 FROM users WHERE email = 'praticien.demo@example.invalid');

INSERT INTO specialites (nom)
SELECT 'Médecine générale'
FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM specialites WHERE nom = 'Médecine générale');

INSERT INTO praticiens (user_id, specialite_id, description)
SELECT u.id, s.id, 'Fiche fictive de démonstration'
FROM users AS u
JOIN roles AS r ON r.id = u.role_id AND r.nom = 'praticien'
JOIN specialites AS s ON s.nom = 'Médecine générale'
WHERE u.email = 'praticien.demo@example.invalid'
  AND NOT EXISTS (SELECT 1 FROM praticiens AS p WHERE p.user_id = u.id);

-- Un créneau libre et un rendez-vous confirmé permettent de tester les parcours.
SET @doctordv_demo_praticien = (
    SELECT p.id
    FROM praticiens AS p
    JOIN users AS u ON u.id = p.user_id
    JOIN roles AS r ON r.id = u.role_id AND r.nom = 'praticien'
    WHERE u.email = 'praticien.demo@example.invalid'
);
SET @doctordv_demo_patient = (
    SELECT u.id
    FROM users AS u
    JOIN roles AS r ON r.id = u.role_id AND r.nom = 'patient'
    WHERE u.email = 'patient.demo@example.invalid'
);

INSERT INTO disponibilites (praticien_id, date_disponibilite, heure_debut, heure_fin)
SELECT @doctordv_demo_praticien, '2027-05-03', '09:00:00', '09:30:00'
FROM DUAL
WHERE @doctordv_demo_praticien IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM disponibilites
    WHERE praticien_id = @doctordv_demo_praticien AND date_disponibilite = '2027-05-03'
      AND heure_debut = '09:00:00' AND heure_fin = '09:30:00'
);

INSERT INTO disponibilites (praticien_id, date_disponibilite, heure_debut, heure_fin, statut)
SELECT @doctordv_demo_praticien, '2027-05-03', '09:30:00', '10:00:00', 'reserve'
FROM DUAL
WHERE @doctordv_demo_praticien IS NOT NULL AND @doctordv_demo_patient IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM disponibilites
    WHERE praticien_id = @doctordv_demo_praticien AND date_disponibilite = '2027-05-03'
      AND heure_debut = '09:30:00' AND heure_fin = '10:00:00'
);
-- Retrouver le créneau de démonstration, même après un import partiel.
-- Le verrou sérialise la création du rendez-vous et de son journal.
SET @doctordv_demo_creneau = (
    SELECT d.id
    FROM disponibilites AS d
    WHERE d.praticien_id = @doctordv_demo_praticien
      AND d.date_disponibilite = '2027-05-03'
      AND d.heure_debut = '09:30:00' AND d.heure_fin = '10:00:00'
      AND d.statut = 'reserve'
    FOR UPDATE
);

INSERT INTO rendez_vous (patient_id, praticien_id, disponibilite_id, statut)
SELECT @doctordv_demo_patient, @doctordv_demo_praticien, @doctordv_demo_creneau, 'confirme'
FROM DUAL
WHERE @doctordv_demo_patient IS NOT NULL AND @doctordv_demo_creneau IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM rendez_vous WHERE disponibilite_id = @doctordv_demo_creneau
);

-- Compléter aussi le journal si le rendez-vous confirmé existe déjà.
INSERT INTO journal_actions (user_id, rendez_vous_id, action)
SELECT rv.patient_id, rv.id, 'creation'
FROM rendez_vous AS rv
WHERE rv.disponibilite_id = @doctordv_demo_creneau
  AND rv.patient_id = @doctordv_demo_patient AND rv.statut = 'confirme'
  AND NOT EXISTS (
    SELECT 1 FROM journal_actions AS j
    WHERE j.rendez_vous_id = rv.id AND j.action = 'creation'
);

COMMIT;
