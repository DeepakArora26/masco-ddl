START TRANSACTION;

CREATE TABLE ${database.defaultSchemaName}.Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);