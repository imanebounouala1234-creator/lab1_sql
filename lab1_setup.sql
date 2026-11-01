
CREATE DATABASE IF NOT EXISTS tp_mysql_db;
USE tp_mysql_db;

CREATE TABLE IF NOT EXISTS utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO utilisateur (nom, email) VALUES 
('Imane', 'imane@example.com'),
('Ahmed', 'ahmed@example.com');


CREATE INDEX idx_email ON utilisateur(email);


CREATE USER IF NOT EXISTS 'admin_user'@'localhost' IDENTIFIED BY 'password123';
GRANT ALL PRIVILEGES ON tp_mysql_db.* TO 'admin_user'@'localhost';
FLUSH PRIVILEGES;


SELECT * FROM utilisateur;
