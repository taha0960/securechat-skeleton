-- mysql_schema.sql (placeholder but valid schema for Assignment 2)

CREATE DATABASE IF NOT EXISTS securechat_db;

USE securechat_db;

CREATE TABLE IF NOT EXISTS users (
    email VARCHAR(255),
    username VARCHAR(100) UNIQUE,
    salt VARBINARY(16),
    pwd_hash CHAR(64)
);

-- sample placeholder record (optional)
INSERT INTO users (email, username, salt, pwd_hash) VALUES
('test@example.com', 'testuser', 0x00000000000000000000000000000000, '0000000000000000000000000000000000000000000000000000000000000000');
