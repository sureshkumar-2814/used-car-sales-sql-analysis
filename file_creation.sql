create table vehicles(
id bigint,
region text,
price bigint,
yr int,
manufacturer text,
model text,
cond text,
cylinders text,
fuel text,
odometer bigint null,
title_status text, 
transmission text,
VIN text,
drive text,
type_veh text,
size text,
paint_colour text,
state text,
lat float,
longi float
);


SHOW VARIABLES LIKE "secure_file_priv";

SET SESSION sql_mode = '';



LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.3/Uploads/vehicles.csv'
INTO TABLE vehicles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
