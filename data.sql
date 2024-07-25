create table public.data (
	Gender VARCHAR,
	Age INTEGER,
	Investment_Avenues VARCHAR,
	Mutual_Funds INTEGER,
	Equity_Market INTEGER,
	Debentures INTEGER,
	Government_Bonds INTEGER,
	Fixed_Deposits INTEGER,
	PPF INTEGER,
	Gold INTEGER,
	Stock_Market VARCHAR,
	Factor VARCHAR,
	Objective VARCHAR,
	Purpose VARCHAR,
	Duration VARCHAR,
	Invest_Monitor VARCHAR,
	Expect VARCHAR,
	Avenue VARCHAR,
	What_are_your_savings_objectives VARCHAR,
	Reason_Equity VARCHAR,
	Reason_Mutual VARCHAR,
	Reason_Bonds VARCHAR,
	Reason_FD VARCHAR,
	Source VARCHAR 
	);

	COPY public.data FROM 'E:\Cognifyz\Data_set 2 - Copy.csv' DELIMITER ',' CSV HEADER ;

select * from public.data

Alter TABLE data
     add column duration_average INT;

UPDATE data
set duration_average = CASE
when duration = 'Less than 1 year' THEN 0.5
when duration = '1-3 years' THEN 2
when duration = '3-5 years' THEN 4
when duration = 'More than 5 years' THEN 6
END;

select duration_average from data



