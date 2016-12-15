INSERT INTO Venue (venue_number, capacity)
VALUES (1, 50)

INSERT INTO Venue (venue_number, capacity)
VALUES (2, 500)

INSERT INTO Event (event_number, venue_number, event_capacity, ticket_price, cancelled, event_date)
VALUES (1, 1, 40, 12.0, 'N', '20161213')

INSERT INTO Event (event_number, venue_number, event_capacity, ticket_price, cancelled, event_date)
VALUES (2, 2, 340, 10.0, 'N', '20161213')


INSERT INTO Event (event_number, venue_number, event_capacity, ticket_price, cancelled, event_date)
VALUES (3, 2, 450, 9.0, 'N', '20161213')

INSERT INTO Performance (performance_number, event_number, name)
VALUES (1, 1, 'Party Day')

INSERT INTO Performance (performance_number, event_number, name)
VALUES (2, 2, 'New Dawn')

INSERT INTO Performance (performance_number, event_number, name)
VALUES (3, 3, 'Hello World Event')

INSERT INTO Artist (artist_number, performance_number, surname, first_name, address, phone, email, catering, refreshments)
VALUES (1, 2, 'John', 'Snow', 'Queen street 2/2', '+0435464566' ,'jonsnow@hotmail.com', 'I want coca cola and sprite', 'Good food and some other cupcakes')
INSERT INTO Artist (artist_number, performance_number, surname, first_name, address, phone, email, catering, refreshments)
VALUES (2, 2, 'Sigrid', 'Snow', 'Queen street 2/2', '+04356784566' ,'sigridsnow@hotmail.com', 'fanta and sprite', 'Chinese food')

INSERT INTO Booking (booking_number, event_number, paid, number_of_tickets, phone, booking_date)
VALUES (1, 2, 'N', 2, '+4365546546', '20161212')

INSERT INTO Booking (booking_number, event_number, paid, number_of_tickets, booking_date)
VALUES (2, 3, 'N', 1, '20161212')

