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
	ProfileImgURL VARCHAR(MAX) DEFAULT('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJEs6KUm8wBS5u9j-vhLf0i8PvNllnRI7Q9nfeHXoWFQ&s=10'), --Can be Null--
	UserStatus VARCHAR(30) DEFAULT('Active') NOT NULL,
	UserDateAdded DATE DEFAULT GETDATE() NOT NULL

    PRIMARY KEY(UserID)

);



-- Creating the Attractions table
CREATE TABLE Attraction(
    AttractionID INT IDENTITY(1,1) UNIQUE NOT NULL,
    AttractionName VARCHAR(150) NOT NULL,
    Province VARCHAR(100) NOT NULL,
    AttractionDescription VARCHAR(500) NOT NULL,

    PRIMARY KEY(AttractionID)
);


-- Creating the products page --
Create Table [Product](

	ProductID INT IDENTITY(1,1) UNIQUE NOT NULL,
	AttractionID INT NOT NULL,
	ProductName VARCHAR(100) NOT NULL,
	Description TEXT NOT NULL,
	Price DECIMAL(10,2) NOT NULL,
	BoxCategory VARCHAR(20) NOT NULL,
	ProductStatus BIT DEFAULT(0) NOT NULL,
	ProductDateAdded DATE DEFAULT GETDATE() NOT NULL,
	
	Primary Key(ProductID),
     FOREIGN KEY(AttractionID)REFERENCES Attraction(AttractionID)
);

Create Table ProductImage(

	ImageID INT IDENTITY(1,1) UNIQUE NOT NULL,
	ProductID INT NOT NULL,
	ImageURL Varchar(max) NOT NUll,
	
	Primary Key(ImageID),
	Foreign key(ProductID) REFERENCES [Product](ProductID)

);

--@admin done with Product Management: @LaniiAndre10 --
--@admin: Order Management--

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

---basic whishlist Table 

CREATE TABLE Wishlist(
    WishlistID INT IDENTITY(1,1) UNIQUE NOT NULL,
    UserID INT NOT NULL,
    ProductID INT NOT NULL,
    PRIMARY KEY(WishlistID),
    FOREIGN KEY(UserID) REFERENCES [User](UserID),
    FOREIGN KEY(ProductID) REFERENCES [Product](ProductID),

  
);

---shopping carts 

CREATE TABLE Cart(
    CartID INT Identity(1,1) UNIQUE NOT NULL,
    UserID INT NOT NULL,
    CartDate DATETIME DEFAULT GETDATE(),
    PRIMARY KEY(CartID),
    FOREIGN KEY(UserID) REFERENCES [User](UserID)
);




CREATE TABLE CartItem(
    CartItemID INT Identity(1,1) UNIQUE NOT NULL,
    CartID INT NOT NULL,
    ProductID int NOT NULL,
    Quantity INT NOT NULL DEFAULT 1,
    PRIMARY KEY(CartItemID),
    FOREIGN KEY(CartID) REFERENCES Cart(CartID),
    FOREIGN KEY(ProductID) REFERENCES [Product](ProductID),
    CHECK(Quantity > 0)
);

