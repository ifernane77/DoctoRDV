
-- Base de données DoctoRDV
CREATE DATABASE doctordv
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE doctordv;

-- Table des rôles utilisateurs
CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE
);

-- Rôles de la version Web V1
INSERT INTO roles (nom)
VALUES
    ('patient'),
    ('praticien'),
    ('administrateur');
