LOAD DATA
INFILE 'C:\Users\sergi\Documents\GitHub\Apalabrados\palabras_data.dat'
TRUNCATE
INTO TABLE PALABRA
fields terminated by ","
(
	palabra
	
)