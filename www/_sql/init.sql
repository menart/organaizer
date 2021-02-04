CREATE SCHEMA `organaizer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

CREATE TABLE `organaizer`.`tuser`
(
    `id`         INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id пользователя',
    `login`      VARCHAR(255) NOT NULL COMMENT 'Имя входа',
    `name`       VARCHAR(255) NOT NULL COMMENT 'Имя в системе',
    `pwd`        VARCHAR(32)  NOT NULL COMMENT 'пароль',
    `email`      VARCHAR(200) NOT NULL COMMENT 'электронная почта, куда будет приходить уведомления',
    `created_at` DATETIME     NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'создано',
    `updated_at` DATETIME     NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'изменено',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
) COMMENT = 'Таблица пользователей';

CREATE TABLE `organaizer`.`tgroup`
(
    `id`         INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id группы',
    `title`      VARCHAR(150) NOT NULL DEFAULT 'default' COMMENT 'наименование группы',
    `userid`     INT UNSIGNED NOT NULL COMMENT 'связь с таблицей user',
    `created_at` DATETIME     NULL     DEFAULT CURRENT_TIMESTAMP COMMENT 'создано',
    `updated_at` DATETIME     NULL     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'изменено',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    INDEX `fk_user_group_idx` (`userid` ASC) VISIBLE,
    CONSTRAINT `fk_user_group`
        FOREIGN KEY (`userid`)
            REFERENCES `organaizer`.`tuser` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
) COMMENT = 'Таблица групп задач';

CREATE TABLE `organaizer`.`ttask`
(
    `id`          INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id задачи',
    `groupid`     INT UNSIGNED NOT NULL COMMENT 'Связь с группой',
    `title`       VARCHAR(150) NOT NULL COMMENT 'Наименование',
    `description` TINYTEXT     NULL COMMENT 'Описание',
    `start`       DATETIME     NOT NULL COMMENT 'Время начала задачи',
    `finish`      DATETIME     NOT NULL COMMENT 'Время завершение задачи',
    `is_done`     BIT          NOT NULL COMMENT 'Флаг выполнения',
    `created_at`  DATETIME     NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'создано',
    `updated_at`  DATETIME     NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'изменено',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    INDEX `fk_group_task_idx` (`groupid` ASC) VISIBLE,
    CONSTRAINT `fk_group_task`
        FOREIGN KEY (`groupid`)
            REFERENCES `organaizer`.`tgroup` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
) COMMENT = 'Таблица задач';
