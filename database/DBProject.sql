-- TwoDimensionalMap
CREATE TABLE TwoDimensionalMap (
    MapId INT PRIMARY KEY,
    Coordinates VARCHAR(50),
);

-- Warehouse
CREATE TABLE Warehouse (
    WarehouseId INT PRIMARY KEY,
    MapId INT FOREIGN KEY REFERENCES TwoDimensionalMap(MapId),
    Name VARCHAR(100),
);

-- Drone
CREATE TABLE Drone (
    DroneId INT PRIMARY KEY,
    WarehouseId INT FOREIGN KEY REFERENCES Warehouse(WarehouseId),
    Capacity DECIMAL(10, 2),
    Consumption DECIMAL(10, 2),
);

-- Order
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    CustomerId INT,
);

-- Customer
CREATE TABLE Customer (
    CustomerId INT PRIMARY KEY,
    Name VARCHAR(100),
    Coordinates VARCHAR(50),
);

-- Products
CREATE TABLE Products (
    ProductId INT PRIMARY KEY,
    Name VARCHAR(100),
);
