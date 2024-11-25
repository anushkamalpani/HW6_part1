CREATE TABLE Caregivers (
    Username varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Availabilities (
    Time date,
    Username varchar(255) REFERENCES Caregivers,
    PRIMARY KEY (Time, Username)
);

CREATE TABLE Vaccines (
    Name varchar(255),
    Doses int,
    PRIMARY KEY (Name)
);

CREATE TABLE Patient (
    Username varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Reservation (
    appointment_id int,
    Date date,
    cusername varchar(255) REFERENCES Caregivers(Username),
    pusername varchar(255) REFERENCES Patient(Username),
    vname varchar(255) REFERENCES Vaccines(Name),
    Canceled INT,
    PRIMARY KEY (appointment_id)
);