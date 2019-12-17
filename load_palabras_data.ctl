LOAD DATA
INFILE 'C:\Users\Pablo\Documents\GitHub\Apalabrados\palabras_data.dat'
TRUNCATE
INTO TABLE PALABRA
fields terminated by ","
(
	palabra
)