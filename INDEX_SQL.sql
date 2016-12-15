CREATE INDEX index_venue
ON Event (venue_number)

CREATE INDEX index_event
ON Performance (event_number)


CREATE INDEX index_performance
ON Artist (performance_number)

CREATE INDEX index_event
ON Booking (event_number)
