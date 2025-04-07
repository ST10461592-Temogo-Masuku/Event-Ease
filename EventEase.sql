--TABLE CREATION SELECTION
CREATE TABLE Venue(
VenueID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
VenueName VARCHAR(20) NOT NULL,
[Location] VARCHAR(50) UNIQUE NOT NULL,
Capacity VARCHAR(20) NOT NULL,
ImageURL VARCHAR(MAX) NOT NULL 
);

CREATE TABLE [Event](
EventID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
EventName VARCHAR(150) NOT NULL,
EventDate VARCHAR(20) NOT NULL,
[Description] VARCHAR(250) NOT NULL,
);

CREATE TABLE Booking(
BookingID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
EventID INT FOREIGN KEY REFERENCES [Event](EventID),
VenueID INT FOREIGN KEY REFERENCES Venue(VenueID),
BookingDate VARCHAR(20) NOT NULL 
);


--TABLE INSERTION SELECTION
INSERT INTO Venue(Venuename,[Location],Capacity,ImageURL)
VALUES('PTA SOUTH','Pretoria','100 000','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR62nX1lLzSBtzQSU5gPU2WdUYdl-ahhYUcmQ&s'),
('Stadium','Johannesburg','466 123','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd6XXB0UIrz7YkRWwKwEu8PN5Il_gvyeQhQw&s')

INSERT INTO [Event](EventName,EventDate,[Description])
VALUES ('Hey Neighbour','29 August','Experience a musical festival in sunny South Africa with world-class performance'),
('Cotten fest','26 April','This sonic and visual festival experience returns to station')

INSERT INTO Booking(EventID,VenueID,BookingDate)
VALUES('1','1','29 August'),
('2','2','26 April')

--/-- TABLE ALTERATION SECTION

--TABLE MANIPULATION
SELECT * FROM Venue
SELECT * FROM [Event]
SELECT * FROM Booking
--STORED PROCEDURES SECTION