CREATE TABLE IF NOT EXISTS parent (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS parent_address (
    id BIGSERIAL PRIMARY KEY,
    parent_id BIGINT REFERENCES parent(id),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(250) NOT NULL,
    county_name VARCHAR(100),
    town VARCHAR(250),
    house_number VARCHAR(250)
);

-- Insert into parent
INSERT INTO parent (name, email)
VALUES
('Bettson Kiptoo', 'bettsonk@gmail.com'),
('Andrew Garfield', 'andrew.garfield@example.com');

-- Insert into parent_address (link with parent_id)
-- INSERT INTO parent_address (county_name,town,house_number)
-- values
-- ('Kericho','Brooke','GH-123'),
-- ('Kericho','Brooke','GH-122');