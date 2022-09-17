CREATE TABLE Compagny(
   id_compagny COUNTER,
   name_compagny VARCHAR(50),
   PRIMARY KEY(id_compagny)
);

CREATE TABLE Booking(
   id_booking COUNTER,
   email_contact VARCHAR(50),
   cancellation_booking LOGICAL,
   confirmation_booking LOGICAL,
   passeport_number INT,
   firstname VARCHAR(50),
   lastname VARCHAR(50),
   number_phone INT,
   PRIMARY KEY(id_booking)
);

CREATE TABLE Country(
   id_country COUNTER,
   PRIMARY KEY(id_country)
);

CREATE TABLE City(
   id_city COUNTER,
   id_country INT NOT NULL,
   PRIMARY KEY(id_city),
   FOREIGN KEY(id_country) REFERENCES Country(id_country)
);

CREATE TABLE Airport(
   id_airport COUNTER,
   id_city INT NOT NULL,
   PRIMARY KEY(id_airport),
   UNIQUE(id_city),
   FOREIGN KEY(id_city) REFERENCES City(id_city)
);

CREATE TABLE Flight(
   number_flight INT,
   id_flight COUNTER,
   departure_flight DATETIME,
   arrival_flight DATETIME,
   id_airport_decollate INT NOT NULL,
   id_airport_disembark INT NOT NULL,
   PRIMARY KEY(number_flight, id_flight),
   FOREIGN KEY(id_airport_decollate) REFERENCES Airport(id_airport),
   FOREIGN KEY(id_airport_disembark) REFERENCES Airport(id_airport)
);

CREATE TABLE Passenger(
   id_passenger COUNTER,
   number_flight INT NOT NULL,
   id_flight INT NOT NULL,
   PRIMARY KEY(id_passenger),
   FOREIGN KEY(number_flight, id_flight) REFERENCES Flight(number_flight, id_flight)
);

CREATE TABLE stopovers(
   id_airport INT,
   number_flight INT,
   id_flight INT,
   departure_stopovers DATETIME,
   arrival_stopovers DATETIME,
   PRIMARY KEY(id_airport, number_flight, id_flight),
   FOREIGN KEY(id_airport) REFERENCES Airport(id_airport),
   FOREIGN KEY(number_flight, id_flight) REFERENCES Flight(number_flight, id_flight)
);

CREATE TABLE obtain(
   id_passenger INT,
   id_booking INT,
   number_reservation INT,
   PRIMARY KEY(id_passenger, id_booking),
   UNIQUE(number_reservation),
   FOREIGN KEY(id_passenger) REFERENCES Passenger(id_passenger),
   FOREIGN KEY(id_booking) REFERENCES Booking(id_booking)
);

CREATE TABLE opening(
   id_booking INT,
   opening_booking LOGICAL,
   id_compagny INT NOT NULL,
   PRIMARY KEY(id_booking),
   UNIQUE(id_compagny),
   FOREIGN KEY(id_booking) REFERENCES Booking(id_booking),
   FOREIGN KEY(id_compagny) REFERENCES Compagny(id_compagny)
);

CREATE TABLE closing(
   id_booking INT,
   close_booking LOGICAL,
   id_compagny INT NOT NULL,
   PRIMARY KEY(id_booking),
   UNIQUE(id_compagny),
   FOREIGN KEY(id_booking) REFERENCES Booking(id_booking),
   FOREIGN KEY(id_compagny) REFERENCES Compagny(id_compagny)
);

CREATE TABLE canceling(
   number_flight INT,
   id_flight INT,
   canceling_flight LOGICAL,
   id_compagny INT NOT NULL,
   PRIMARY KEY(number_flight, id_flight),
   UNIQUE(id_compagny),
   FOREIGN KEY(number_flight, id_flight) REFERENCES Flight(number_flight, id_flight),
   FOREIGN KEY(id_compagny) REFERENCES Compagny(id_compagny)
);

CREATE TABLE destination(
   number_flight INT,
   id_flight INT,
   booking_destination VARCHAR(50),
   id_compagny INT NOT NULL,
   id_booking INT NOT NULL,
   PRIMARY KEY(number_flight, id_flight),
   FOREIGN KEY(number_flight, id_flight) REFERENCES Flight(number_flight, id_flight),
   FOREIGN KEY(id_compagny) REFERENCES Compagny(id_compagny),
   FOREIGN KEY(id_booking) REFERENCES Booking(id_booking)
);
