-- ============================================================
-- Customized MySQL Lab Reference (Different Database & Names)
-- Safe for repository submission
-- ============================================================

-- ------------------------------------------------------------
-- 1. Database Creation & Selection
-- ------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS store_db
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE store_db;

SHOW DATABASES;


-- ------------------------------------------------------------
-- 2. Table Creation (Custom Structure)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;


-- ------------------------------------------------------------
-- 3. Data Insertion & Selection
-- ------------------------------------------------------------
INSERT INTO clients_data (full_name, email) VALUES
('Omar Mansouri', 'omar@store.com'),
('Khadija Chraibi', 'khadija@store.com'),
('Amine Bennani', 'amine@test.net');

SELECT * FROM members;
SELECT full_name, email FROM members WHERE email LIKE '%@store.com';
SELECT COUNT(*) AS total_members FROM members;
SELECT full_name, email FROM members ORDER BY full_name ASC;
SELECT full_name, email FROM members ORDER BY id DESC LIMIT 2;


-- ------------------------------------------------------------
-- 4. Updates & Deletions
-- ------------------------------------------------------------
UPDATE members
SET email = 'khadija.bennani@store.com'
WHERE full_name = 'Khadija Chraibi';

DELETE FROM members
WHERE full_name = 'Amine Bennani';


-- ------------------------------------------------------------
-- 5. Transactions & Rollback
-- ------------------------------------------------------------
START TRANSACTION;

DELETE FROM members WHERE full_name = 'Omar Mansouri';

-- Undo changes:
ROLLBACK;

-- Save changes:
-- COMMIT;


-- ------------------------------------------------------------
-- 6. Index Management & Execution Plan
-- ------------------------------------------------------------
CREATE INDEX idx_member_email ON members(email);

SHOW INDEX FROM members;

EXPLAIN SELECT * FROM members WHERE email = 'omar@store.com';

DROP INDEX idx_member_email ON members;


-- ------------------------------------------------------------
-- 7. User Management & Grants
-- ------------------------------------------------------------
CREATE USER 'store_admin'@'localhost' IDENTIFIED BY 'CustomPass2026!';

GRANT SELECT, INSERT, UPDATE, DELETE ON store_db.* TO 'store_admin'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'store_admin'@'localhost';

-- DROP USER 'store_admin'@'localhost';


-- ------------------------------------------------------------
-- 8. Cleanup Statements
-- ------------------------------------------------------------
-- DROP TABLE members;
-- DROP DATABASE store_db;
-- EXIT;


-- ------------------------------------------------------------
-- 9. Terminal Export & Import Commands (Execute in Terminal)
-- ------------------------------------------------------------
-- Export single table:
--   mysqldump -u root -p store_db members > members_backup.sql
--
-- Export entire database with options:
--   mysqldump -u root -p --single-transaction --routines --triggers store_db > store_db_full.sql
--
-- Import/Restore backup:
--   mysql -u root -p store_db < members_backup.sql
