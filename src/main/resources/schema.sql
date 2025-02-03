CREATE TABLE author
(
    id   BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE book
(
    id               BIGSERIAL PRIMARY KEY,
    title            VARCHAR(255)       NOT NULL,
    isbn             VARCHAR(20) UNIQUE NOT NULL,
    publication_year INT                NOT NULL,
    author_id        BIGINT,
    CONSTRAINT fk_book_author FOREIGN KEY (author_id) REFERENCES author (id) ON DELETE CASCADE
);
