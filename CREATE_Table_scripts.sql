CREATE TABLE Venue
(
		venue_number INTEGER NOT NULL,
		capacity INTEGER NOT NULL,
		CONSTRAINT pk_Venue PRIMARY KEY (venue_number)
)

CREATE TABLE Event
(
		event_number INTEGER NOT NULL,
		venue_number INTEGER NOT NULL,
		event_capacity INTEGER NOT NULL,
		ticket_price FLOAT NOT NULL,
		cancelled VARCHAR(1) NOT NULL,
		event_date DATE NOT NULL,
		CONSTRAINT pk_Event PRIMARY KEY (event_number),		CONSTRAINT fk_Event FOREIGN KEY (venue_number) REFERENCES Venue(venue_number),		CONSTRAINT chk_Event_price CHECK (ticket_price > 0),		CONSTRAINT chk_Event_cancelled CHECK (cancelled = 'Y' OR cancelled = 'N'),
)

CREATE TABLE Performance
(
		performance_number INTEGER NOT NULL,
		event_number INTEGER NOT NULL,
		name VARCHAR(255) NOT NULL,
		CONSTRAINT pk_Perfomance PRIMARY KEY (performance_number),		CONSTRAINT fk_Perfomance FOREIGN KEY (event_number) REFERENCES Event(event_number)
)




CREATE TABLE Artist
(
		artist_number INTEGER NOT NULL,
		performance_number INTEGER,
		surname VARCHAR(255) NOT NULL,
		first_name VARCHAR(255) NOT NULL,
		address VARCHAR(255) NOT NULL,
		phone VARCHAR(255) NOT NULL,
		email VARCHAR(255) NOT NULL,
		catering TEXT NOT NULL,
		refreshments TEXT NOT NULL,

		CONSTRAINT pk_Artist PRIMARY KEY (artist_number),		CONSTRAINT fk_Artist FOREIGN KEY (performance_number) REFERENCES Performance(performance_number)
)



CREATE TABLE Booking
(
		booking_number INTEGER NOT NULL,
		event_number INTEGER NOT NULL,
		paid VARCHAR(1) NOT NULL,
		number_of_tickets INTEGER NOT NULL,
		refund CHAR(1),
		phone VARCHAR(255),
		booking_date DATE NOT NULL,

		CONSTRAINT pk_Booking PRIMARY KEY (booking_number),		CONSTRAINT fk_Booking FOREIGN KEY (event_number) REFERENCES Event(event_number),		CONSTRAINT chk_Booking_paid CHECK (paid = 'Y' OR paid = 'N' ),		CONSTRAINT chk_Booking_numbertickets CHECK (number_of_tickets > 0),		CONSTRAINT chk_Booking_refund CHECK (refund = 'Y' OR refund = NULL)
)


