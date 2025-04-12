
-- 1. Create a new user
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password123';

-- 2. Grant permissions to the new user
GRANT SELECT, INSERT, UPDATE, DELETE ON bookstoredb.* TO 'new_user'@'localhost';

-- 3. Create an admin user with all privileges
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'adminpass123';

GRANT ALL PRIVILEGES ON bookstoredb.* TO 'admin_user'@'localhost';

-- 4. Granting specific privileges (e.g., read-only access to a user)
CREATE USER 'readonly_user'@'localhost' IDENTIFIED BY 'readonly123';

GRANT SELECT ON bookstoredb.* TO 'readonly_user'@'localhost';


