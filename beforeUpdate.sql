USE `pixar`;

DELIMITER $$

DROP TRIGGER IF EXISTS pixar.personal_BEFORE_UPDATE$$
USE `pixar`$$
CREATE DEFINER = CURRENT_USER TRIGGER `pixar`.`personal_BEFORE_UPDATE` BEFORE UPDATE ON `personal` FOR EACH ROW
BEGIN
DECLARE oldDate timestamp;

set new.edited = now();

SELECT CREATED from personal where id = new.id into oldDate;
set new.created = oldDate;
END
$$
DELIMITER ;
