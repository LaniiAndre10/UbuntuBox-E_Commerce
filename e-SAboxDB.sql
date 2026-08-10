Use ESAboxDB;
GO

Create Table [User](
 
    UserID INT IDENTITY(1,1)  Unique Not NUll,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    IsAdmin BIT NOT NULL DEFAULT 0,

    PRIMARY KEY(UserID)

);