--ADD COLUMN IN PLANE TABLE.
ALTER TABLE PLANE ADD NUM_SEAT INT;

--REMOVE COLUMN IN PLANE TABLE.
ALTER TABLE PLANE DROP NUM_SEAT ;

-- DELETE SPECIFIC RECORD.
DELETE FROM AIRLINE WHERE air_name='American Airlines';

-- update specific value.
update employee
set salary = 20000 
WHERE essn=1001;

DELETE FROM control;

INSERT INTO control (fnumber_id,cssn) VALUES
(1,1001),
(2,1001),
(3,1001),
(4,1001),
(5,1001),
(6,1006),
(7,1006),
(8,1006),
(9,1006),
(10,1006),
(11,1011),
(12,1011),
(13,1011),
(14,1011),
(15,1011),
(1,1002),
(2,1002),
(3,1002),
(4,1002),
(5,1002),
(6,1007),
(7,1007),
(8,1007),
(9,1007),
(10,1007),
(11,1012),
(12,1012),
(13,1012),
(14,1012),
(15,1012);

