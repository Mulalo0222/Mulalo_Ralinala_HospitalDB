CREATE TABLE Department (
  DepartmentID INTEGER PRIMARY KEY NOT NULL,
  Name VARCHAR NOT NULL,
  Head INTEGER NOT NULL
    CONSTRAINT fk_Physician_EmployeeID REFERENCES Physician(EmployeeID)
);
