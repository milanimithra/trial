--<ScriptOptions statementTerminator=";"/>

CREATE TABLE joinsample2 (
	id INT NOT NULL,
	teams VARCHAR(45),
	PRIMARY KEY (id)
);

CREATE TABLE new_table (
	idnew_table INT NOT NULL,
	PRIMARY KEY (idnew_table)
);

CREATE TABLE p2 (
	id INT NOT NULL,
	pname VARCHAR(20),
	PRIMARY KEY (id)
);

CREATE TABLE myteams (
	teams VARCHAR(10) NOT NULL,
	PRIMARY KEY (teams)
);

CREATE TABLE joinsample (
	teams VARCHAR(20),
	id INT NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE p1 (
	id INT NOT NULL,
	pname VARCHAR(45),
	price DOUBLE,
	quantity DECIMAL(10 , 0),
	PRIMARY KEY (id)
);

CREATE TABLE myproducts1 (
	pname VARCHAR(45)
);

CREATE TABLE p3 (
	pid INT,
	pname VARCHAR(10)
);

CREATE TABLE myproducts (
	pname VARCHAR(45)
);

CREATE TABLE prod_quantity (
	pname VARCHAR(45),
	quantity DECIMAL(10 , 0)
);

CREATE TABLE mytbl (
	id INT NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE p4 (
	fname VARCHAR(10) NOT NULL,
	lname VARCHAR(10) NOT NULL,
	age INT,
	PRIMARY KEY (fname,lname)
);

CREATE TABLE myproducts2 (
	pname VARCHAR(45)
);

CREATE INDEX id_i ON p1 (id ASC);

CREATE INDEX pid ON p3 (pid ASC);

CREATE INDEX myidx ON p1 (id ASC);

CREATE INDEX myidx1 ON p2 (id ASC);

CREATE INDEX myidx ON p2 (id ASC);

