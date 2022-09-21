-- SQLite
-- DROP TABLE userPref;
-- DROP TABLE users

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fname TEXT,
    lname TEXT,
    email TEXT,
    password TEXT,
)

CREATE TABLE userPref (
    prefid INTEGER PRIMARY KEY AUTOINCREMENT,
    userid INTEGER,
    timeZone INTEGER,
    task TEXT,
    pace INTEGER,
    FOREIGN KEY (userid) REFERENCES users(id)
);


-- PRAGMA foreign_keys = ON;