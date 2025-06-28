-- 1. Accounts Table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountHolder VARCHAR(100) NOT NULL,
    AccountType VARCHAR(50) CHECK (AccountType IN ('Savings', 'Checking', 'Business')),
    OpenDate DATE NOT NULL,
    Status VARCHAR(20) DEFAULT 'Active'
);

-- 2. Categories Table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL UNIQUE
);

-- 3. Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Accounts(AccountID),
    TxnDate DATE NOT NULL,
    Amount DECIMAL(12, 2) NOT NULL,
    Type VARCHAR(10) CHECK (Type IN ('Income', 'Expense')),
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID),
    Description VARCHAR(255)
);

-- 4. MonthlyBudgets Table
CREATE TABLE MonthlyBudgets (
    BudgetID INT IDENTITY(1,1) PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Accounts(AccountID),
    Month DATE NOT NULL,  -- Use the 1st of each month (e.g., '2023-01-01')
    BudgetAmount DECIMAL(12,2) NOT NULL
);

-- 5. Payments Table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Accounts(AccountID),
    VendorName VARCHAR(100) NOT NULL,
    Amount DECIMAL(12, 2) NOT NULL,
    PaymentDate DATE NOT NULL
);
