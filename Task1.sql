CREATE DATABASE TestDb;
use TestDb;

CREATE TABLE Persons(
  ID int,
  Firstname nvarchar(20),
  Surname nvarchar(20),
  Age int,
  Sallary float,
  Position nvarchar(30)
);

INSERT INTO Persons VALUES (1, 'Akif', 'Talibov', '35', '500', 'Helpdesk'),
							(2, 'Hesen', 'Hesenov', '30', '200', 'Supervisor'),
							(3, 'Medet', 'Quliyev', '20', '600', 'Manager');

--select AVG(Sallary) from Persons

--select MAX(Sallary) from Persons

--select MIN(Sallary) from Persons


select * from Persons
where Sallary > (select AVG(Sallary) from Persons)
