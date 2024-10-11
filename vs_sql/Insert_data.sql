-- Inserting data into the 'airline' table
INSERT INTO airline (air_name) VALUES
('Delta Airlines'),
('United Airlines'),
('American Airlines'),
('Lufthansa'),
('Emirates'),
('British Airways'),
('Qatar Airways'),
('Singapore Airlines'),
('Air France'),
('Cathay Pacific'),
('Qant Airways'),
('Etihad Airways'),
('KLM Airlines'),
('Turkish Airlines'),
('Japan Airlines');

-- Inserting data into the 'plane' table
INSERT INTO plane (plane_number_id, capacity, model) VALUES
(1, 150, 'Boeing 737'),
(2, 200, 'Airbus A320'),
(3, 300, 'Boeing 777'),
(4, 250, 'Airbus A350'),
(5, 180, 'Embraer E190'),
(6, 180, 'Boeing 787'),
(7, 220, 'Airbus A330'),
(8, 350, 'Boeing 747'),
(9, 300, 'Airbus A380'),
(10, 200, 'Embraer E195'),
(11, 200, 'Boeing 767'),
(12, 250, 'Airbus A380'),
(13, 300, 'Boeing 787'),
(14, 180, 'Embraer E190'),
(15, 220, 'Airbus A330');

-- Inserting data into the 'trip' table
INSERT INTO trip (t_flight_number, departure_hour, arrival_hour, departure_airport, arrival_airport, trip_date, aname, pnumber_id) VALUES
(101, '2023-12-24 08:00:00', '2023-12-24 12:00:00', 'JFK', 'LHR', '2023-12-24', 'Delta Airlines', 1),
(102, '2023-12-25 10:30:00', '2023-12-25 15:30:00', 'ORD', 'CDG', '2023-12-25', 'United Airlines', 2),
(103, '2023-12-26 12:45:00', '2023-12-26 18:00:00', 'DFW', 'FRA', '2023-12-26', 'American Airlines', 3),
(104, '2023-12-27 14:15:00', '2023-12-27 18:45:00', 'DXB', 'JFK', '2023-12-27', 'Emirates', 5),
(105, '2023-12-28 09:30:00', '2023-12-28 14:00:00', 'MUC', 'ATL', '2023-12-28', 'Lufthansa', 4),
(106, '2024-01-05 08:30:00', '2024-01-05 13:30:00', 'LAX', 'LHR', '2024-01-05', 'British Airways', 6),
(107, '2024-01-06 11:45:00', '2024-01-06 18:00:00', 'DOH', 'JFK', '2024-01-06', 'Qatar Airways', 7),
(108, '2024-01-07 09:15:00', '2024-01-07 15:45:00', 'SIN', 'CDG', '2024-01-07', 'Singapore Airlines', 9),
(109, '2024-01-08 14:00:00', '2024-01-08 19:30:00', 'CDG', 'HKG', '2024-01-08', 'Air France', 8),
(110, '2024-01-09 12:30:00', '2024-01-09 17:00:00', 'HKG', 'SYD', '2024-01-09', 'Cathay Pacific', 10),
(111, '2024-01-10 07:45:00', '2024-01-10 11:15:00', 'SYD', 'HND', '2024-01-10', 'Qant Airways', 11),
(112, '2024-01-11 09:00:00', '2024-01-11 14:30:00', 'AUH', 'JFK', '2024-01-11', 'Etihad Airways', 12),
(113, '2024-01-12 11:30:00', '2024-01-12 18:00:00', 'AMS', 'SIN', '2024-01-12', 'KLM Airlines', 13),
(114, '2024-01-13 13:15:00', '2024-01-13 17:45:00', 'IST', 'LHR', '2024-01-13', 'Turkish Airlines', 14),
(115, '2024-01-14 08:45:00', '2024-01-14 13:00:00', 'HND', 'JFK', '2024-01-14', 'Japan Airlines', 15);

-- Inserting data into the 'passenger' table
INSERT INTO passenger (pfname, plname, pssn, p_pass_id, phone, address, nationality, flight_number) VALUES
('John', 'Doe', 123456789, 1, '123-456-7890', '123 Main St, City', 'US', 101),
('Jane', 'Smith', 987654321, 2, '987-654-3210', '456 Oak St, Town', 'UK', 102),
('Robert', 'Johnson', 456789012, 3, '555-123-4567', '789 Pine St, Village', 'US', 103),
('Aisha', 'Ahmed', 789012345, 4, '333-777-9999', '321 Elm St, Town', 'UAE', 104),
('Maria', 'Garcia', 234567890, 5, '777-888-5555', '654 Cedar St, City', 'Germany', 105),
('Michael', 'Johnson', 111222333, 6, '111-222-3333', '123 Main St, City', 'US', 106),
('Emily', 'Brown', 444555666, 7, '444-555-6666', '456 Oak St, Town', 'UK', 107),
('David', 'Lee', 777888999, 8, '777-888-9999', '789 Pine St, Village', 'US', 108),
('Sarah', 'Wong', 333999776, 9, '333-999-7777', '321 Elm St, Town', 'Hong Kong', 109),
('James', 'Chan', 222777888, 10, '222-777-8888', '654 Cedar St, City', 'Australia', 110),
('Michael', 'Johnson', 11122234, 11, '111-222-3333', '123 Main St, City', 'US', 111),
('Emily', 'Brown', 444555667, 12, '444-555-6666', '456 Oak St, Town', 'UK', 112),
('David', 'Lee', 777888998, 13, '777-888-9999', '789 Pine St, Village', 'US', 113),
('Sarah', 'Wong', 333999777, 14, '333-999-7777', '321 Elm St, Town', 'Hong Kong', 114),
('James', 'Chan', 222777887, 15, '222-777-8888', '654 Cedar St, City', 'Australia', 115);

-- Inserting data into the 'ticket' table
INSERT INTO ticket (seat_no, cost, ticket_id, pag_pass_id) VALUES
(101, 500, 1, 1),
(102, 600, 2, 2),
(103, 700, 3, 3),
(104, 800, 4, 4),
(105, 900, 5, 5),
(106, 700, 6, 6),
(107, 800, 7, 7),
(108, 900, 8, 8),
(109, 1000, 9, 9),
(110, 1100, 10, 10),
(111, 700, 11, 11),
(112, 800, 12, 12),
(113, 900, 13, 13),
(114, 1000, 14, 14),
(115, 1100, 15, 15);

-- Inserting data into the 'employee' table
INSERT INTO employee (essn, fname, lname, phone, address, salary, position) VALUES
(1001, 'Michael', 'Smith', '111-222-3333', '789 Oak St, City', 60000, 'Pilot'),
(1002, 'Emily', 'Jones', '444-555-6666', '456 Pine St, Town', 50000, 'Flight Attendant'),
(1003, 'David', 'Wilson', '777-888-9999', '123 Cedar St, Village', 70000, 'Ground Crew'),
(1004, 'Sarah', 'Clark', '333-999-7777', '321 Elm St, Town', 55000, 'Security'),
(1005, 'James', 'Miller', '222-777-8888', '654 Maple St, City', 65000, 'Engineer'),
(1006, 'Sophia', 'Nguyen', '555-666-7777', '789 Oak St, City', 60000, 'Pilot'),
(1007, 'Daniel', 'Wong', '666-777-8888', '456 Pine St, Town', 50000, 'Flight Attendant'),
(1008, 'Olivia', 'Tran', '777-888-9999', '123 Cedar St, Village', 70000, 'Ground Crew'),
(1009, 'Matthew', 'Leung', '888-999-0000', '321 Elm St, Town', 55000, 'Security'),
(1010, 'Emma', 'Cheung', '999-000-1111', '654 Maple St, City', 65000, 'Engineer'),
(1011, 'Sophia', 'Nguyen', '555-666-7777', '789 Oak St, City', 60000, 'Pilot'),
(1012, 'Daniel', 'Wong', '666-777-8888', '456 Pine St, Town', 50000, 'Flight Attendant'),
(1013, 'Olivia', 'Tran', '777-888-9999', '123 Cedar St, Village', 70000, 'Ground Crew'),
(1014, 'Matthew', 'Leung', '888-999-0000', '321 Elm St, Town', 55000, 'Security'),
(1015, 'Emma', 'Cheung', '999-000-1111', '654 Maple St, City', 65000, 'Engineer');

-- Inserting data into the 'assistance' table
INSERT INTO assistance (ass_pass_id, emssn) VALUES
(1, 1003),
(2, 1004),
(3, 1005),
(4, 1002),
(5, 1001),
(6, 1013),
(7, 1014),
(8, 1015),
(9, 1012),
(10, 1011),
(11, 1013),
(12, 1014),
(13, 1015),
(14, 1012),
(15, 1011);

-- Inserting data into the 'control' table
INSERT INTO control (fnumber_id, cssn) VALUES
(1, 1003),
(2, 1004),
(3, 1005),
(4, 1002),
(5, 1001),
(6, 1013),
(7, 1014),
(8, 1015),
(9, 1012),
(10, 1011),
(11, 1013),
(12, 1014),
(13, 1015),
(14, 1012),
(15, 1011);

INSERT INTO control (m_essn, USER_NAME,PASSWORD) VALUES
(1005,"james_miller@airport.com","123"),
(1010,"emma_cheung@airport.com","456"),
(1015,"james_miller@airport.com","789");
