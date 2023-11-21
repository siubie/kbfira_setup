CREATE DATABASE `kbv2-fira` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER 'kbv2user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'kbv2userpass';
CREATE USER 'kbv2user'@'%' IDENTIFIED WITH mysql_native_password BY 'kbv2userpass';
GRANT ALL PRIVILEGES ON `kbv2-fira`.* TO `kbv2user`@`localhost`;
GRANT ALL PRIVILEGES ON `kbv2-fira`.* TO `kbv2user`@`%`;
FLUSH PRIVILEGES;