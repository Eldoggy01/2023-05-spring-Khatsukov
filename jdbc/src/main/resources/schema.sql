DROP TABLE IF EXISTS BOOK;
DROP TABLE IF EXISTS Genre;
DROP TABLE IF EXISTS AUTHOR;

CREATE TABLE AUTHOR
(
    ID   BIGINT PRIMARY KEY,
    NAME VARCHAR(255)
);

CREATE TABLE Genre
(
    ID   BIGINT PRIMARY KEY,
    NAME VARCHAR(255)
);


CREATE TABLE BOOK
(
    ID   BIGINT PRIMARY KEY,
    NAME VARCHAR(255),
    author_id bigint references AUTHOR (id),
    genre_id bigint references Genre(id)
);