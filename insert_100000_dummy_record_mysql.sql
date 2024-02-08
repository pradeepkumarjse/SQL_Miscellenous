DELIMITER $$
CREATE PROCEDURE insert_dummy_users()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 1000000 DO
        INSERT INTO user1 (id, name, email) VALUES
        (i, CONCAT('User', i), CONCAT('user', i, '@example.com'));
        SET i = i + 1;
    END WHILE;
END$$
