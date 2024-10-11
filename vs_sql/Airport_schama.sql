CREATE DATABASE airport;
USE airport;

-- Airline table
CREATE TABLE airline (
    air_name VARCHAR(20) PRIMARY KEY
);

-- Plane table
CREATE TABLE plane (
    plane_number_id INT PRIMARY KEY,
    capacity INT NOT NULL,
    model VARCHAR(20)
);

-- Trip table
CREATE TABLE trip (
    t_flight_number INT PRIMARY KEY,
    departure_hour DATETIME NOT NULL,
    arrival_hour DATETIME NOT NULL,
    departure_airport VARCHAR(20) NOT NULL,
    arrival_airport VARCHAR(20) NOT NULL,
    trip_date DATE NOT NULL,
    aname VARCHAR(20),
    pnumber_id INT,
    FOREIGN KEY (aname) REFERENCES airline(air_name) on delete CASCADE,
    FOREIGN KEY (pnumber_id) REFERENCES plane(plane_number_id) on delete CASCADE
);

-- Passenger table
CREATE TABLE passenger (
    pfname VARCHAR(50) NOT NULL,
    plname VARCHAR(50) NOT NULL,
    pssn INT UNIQUE NOT NULL,
    p_pass_id INT PRIMARY KEY,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(50),
    nationality VARCHAR(20),
    flight_number INT,
    FOREIGN KEY (flight_number) REFERENCES trip(t_flight_number)on delete CASCADE
);

-- Ticket table
CREATE TABLE ticket (
    seat_no INT UNIQUE NOT NULL,
    cost INT,
    ticket_id INT PRIMARY KEY,
    pag_pass_id INT,
    FOREIGN KEY (pag_pass_id) REFERENCES passenger(p_pass_id)on delete CASCADE
);

-- Employee table
CREATE TABLE employee (
    essn INT PRIMARY KEY,
    fname VARCHAR(15) NOT NULL,
    lname VARCHAR(15) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(30),
    salary INT,
    position VARCHAR(30) NOT NULL
);

-- Assistance table
CREATE TABLE assistance (
    ass_pass_id INT,
    emssn INT,
    FOREIGN KEY (ass_pass_id) REFERENCES passenger(p_pass_id) on delete CASCADE,
    FOREIGN KEY (emssn) REFERENCES employee(essn)on delete CASCADE
);

-- Control table
CREATE TABLE control (
    fnumber_id INT,
    cssn INT,
    FOREIGN KEY (fnumber_id) REFERENCES plane(plane_number_id)on delete CASCADE,
    FOREIGN KEY (cssn) REFERENCES employee(essn)on delete CASCADE
);


CREATE TABLE admin (
    m_essn INT, 
    USER_NAME VARCHAR(25),
    PASSWORD VARCHAR(10),
    FOREIGN KEY (m_essn) REFERENCES employee(essn)on delete CASCADE
);