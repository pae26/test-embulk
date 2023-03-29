CREATE TABLE `users_mysql` (
    `id_mysql` INT PRIMARY KEY,
    `name_mysql` VARCHAR(100) NOT NULL,
    `gender_mysql` ENUM('male', 'female', 'others') NOT NULL
)