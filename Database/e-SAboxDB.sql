Use ESAboxDB;

--1. Authentication --

CREATE TABLE [User](

    --creating the user table for the authentication feature--
 
    UserID INT IDENTITY(1,1)  UNIQUE NOT NUll,
    Username VARCHAR(150) NOT NULL UNIQUE,
    Email VARCHAR(150) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    IsAdmin BIT NOT NULL DEFAULT 0,

    PRIMARY KEY(UserID)

);
