DROP TABLE IF EXISTS vaccine_json;
DROP TABLE IF EXISTS vaccine_csv;



CREATE TABLE vaccine_csv (
	id SERIAL PRIMARY KEY ,
	country VARCHAR(50) NOT NULL,
	date VARCHAR(50) NOT NULL,
	total_vaccinations VARCHAR(50) NOT NULL,
	daily_vaccinations VARCHAR(50) NOT NULL,
	daily_vaccinations_per_million VARCHAR(50) NOT NULL,
	vaccines VARCHAR(50) NOT NULL
);


CREATE TABLE vaccine_json (
  id SERIAL PRIMARY KEY ,
  date VARCHAR(50) NOT NULL,
  positive VARCHAR(300) NOT NULL,
  negative VARCHAR(300) NOT NULL
);

select * from vaccine_csv