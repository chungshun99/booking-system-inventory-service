CREATE TABLE venue (
    id bigint AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    total_capacity bigint NOT NULL
);


CREATE TABLE event (
    id bigint AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL,
    venue_id bigint NOT NULL,
    total_capacity bigint NOT NULL,
    left_capacity bigint NOT NULL,
    CONSTRAINT fk_event_venue FOREIGN KEY (venue_id) REFERENCES venue(id) ON DELETE CASCADE
);