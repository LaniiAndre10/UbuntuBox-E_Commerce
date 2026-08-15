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

---Products informtion
Create Table [Product](
ProductID INt Identity(1,1) Unique Not NUll,
ProductName varchar(100) Not null,
Description Varchar(500) Not Null,
Price Decimal(10,2) Not Null,
BoxType varchar(20) Not Null,
Primary Key(ProductID)

);


Create Table ProductImage(
ImageID Int Identity(1,1) Unique Not Null,
ProductID int Not Null,
ImageURL Varchar(max) Not NUll,
Primary Key(ImageID),
Foreign key(ProductID) References [Product](ProductID)


);


Create table ProductReview(
ReviewID int Identity(1,1) Unique Not Null,
ProductID INT NOT NULL,
UserID INT NOT NULL,
Rating int Not Null,
ReviewText Varchar(500) Not null,

ReviewDate DateTime DEFAULT GETDATE(),-- Records when the review was submitted Helps us know when a review was posted.

Primary key(ReviewID),
foreign key(ProductID) References [Product](ProductID),
foreign key(UserID) References[User](UserID),

Check(Rating BETWEEN 1 AND 5) -- Ensures that the rating can only be between 1 and 5.



);
