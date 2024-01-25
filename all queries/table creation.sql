CREATE TABLE Categories(
	CategoryID int primary key,
	CategoryType varchar(30),
	CategoryName varchar(50)
)

CREATE TABLE Products(
	ProductID varchar(15) primary key,
	ProductName varchar(50),
	Brand varchar(50),
	StockQuantity int,
	CategoryID int REFERENCES Categories(CategoryID),
	Price decimal(20,2)
)

CREATE TABLE Users(
	UserID varchar(10) primary key,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	PhoneNumber varchar(15) NOT NULL UNIQUE,
	IdentityNumber varchar(15) NOT NULL UNIQUE,

)

CREATE TABLE Orders(
	OrderID varchar(10) primary key,
	UserID varchar(10) foreign key REFERENCES Users(UserID),
	ProductID varchar(15) foreign key REFERENCES Products(ProductID),
	Quantity int NOT NULL,
	DateCreated datetime NOT NULL,
	Delivered bit NOT NULL --boolean sql serverda yok

)