Use dbaUbuntuBox;

--1. Authentication --

CREATE TABLE [User](

    --creating the user table for the authentication feature--
 
    UserID INT IDENTITY(1,1)  UNIQUE NOT NUll,
    Usernames VARCHAR(150) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE,
	PhoneNum VARCHAR(15) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    IsAdmin BIT NOT NULL DEFAULT 0,

    PRIMARY KEY(UserID)

);
