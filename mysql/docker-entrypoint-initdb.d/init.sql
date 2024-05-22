CREATE DATABASE `kb_v2_fira` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER 'superuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
CREATE USER 'superuser'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON `kb_v2_fira`.* TO `superuser`@`localhost`;
GRANT ALL PRIVILEGES ON `kb_v2_fira`.* TO `superuser`@`%`;
FLUSH PRIVILEGES;













































