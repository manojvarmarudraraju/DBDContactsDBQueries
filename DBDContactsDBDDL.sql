DROP TABLE KBX02002.TRIAL 

CREATE TABLE KBX02002.CONTACT(
	Contact_id integer PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	Fname varchar(20),
	Mname varchar(20),
	Lname varchar(20)
)

CREATE TABLE KBX02002.ADDRESS(
	Address_id integer PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	Contact_id integer,
	Address_type integer,
	Address varchar(75),
	City varchar(25),
	State varchar(20),
	ZIP varchar(5),
	FOREIGN KEY (Contact_id) REFERENCES "KBX02002".CONTACT(Contact_id)
)

CREATE TABLE KBX02002.PHONE(
	Phone_id integer PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	Contact_id integer,
	Phone_type integer,
	Area_code varchar(3),
	Mobile_number varchar(10),
	FOREIGN KEY (Contact_id) REFERENCES "KBX02002".CONTACT(Contact_id)
)

CREATE TABLE KBX02002.DATE(
	Date_id integer PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	Contact_id integer,
	Date_type integer,
	Date_date timestamp,
	FOREIGN KEY (Contact_id) REFERENCES "KBX02002".CONTACT(Contact_id)
)