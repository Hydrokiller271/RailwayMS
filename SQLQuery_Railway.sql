CREATE DATABASE Railway		
GO
USE Railway
GO
CREATE SCHEMA System
GO

CREATE TABLE System.Train(
	id VARCHAR (20) PRIMARY KEY,
	name VARCHAR (20) );

CREATE TABLE System.Station(
	id VARCHAR (20) PRIMARY KEY,
	name VARCHAR (20) );

CREATE TABLE System.Track(
	id VARCHAR (20) PRIMARY KEY,
	station_a VARCHAR (20) ,
	station_B VARCHAR (20) );

CREATE TABLE System.Schedule(
	train VARCHAR (20) PRIMARY KEY ,
	sequence_number VARCHAR (20) ,
	station VARCHAR (20) ,
	time_in DATE ,
	time_out DATE);

CREATE TABLE System.Booking(
	id VARCHAR (20) PRIMARY KEY,
	date Date ,
	r_from VARCHAR (20) ,
	r_to VARCHAR (20),
	coach VARCHAR (10),
	seat VARCHAR (10),
	train VARCHAR (20),
	start_sn VARCHAR (20),
	end_sn VARCHAR (20),
	passenger_name VARCHAR (20));

