
SHOW timezone;

SELECT now();
SELECT now()::date;
SELECT now()::time;

SELECT to_char(now(), 'dd/mm/yyyy');
SELECT to_char(now(), 'DDD');
SELECT to_char(now(), 'Month');

SELECT CURRENT_DATE;

CREATE Table  timez  (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT into timez  VALUES('2025-01-12 10:33:00', '2025-01-12 10:33:00');

SELECT * from timez;


SELECT CURRENT_DATE - INTERVAL '1 year 5 month  8 days';

SELECT age(CURRENT_DATE, '2006-04-18');
SELECT *,age(CURRENT_DATE, dob)from students; 