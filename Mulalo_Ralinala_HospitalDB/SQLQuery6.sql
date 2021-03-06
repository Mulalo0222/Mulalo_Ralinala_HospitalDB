CREATE TABLE Patient (
  SSN INTEGER PRIMARY KEY NOT NULL,
  [Name] VARCHAR NOT NULL,
  Address TEXT NOT NULL,
  Phone VARCHAR NOT NULL,
  InsuranceID INTEGER NOT NULL,
  PCP INTEGER NOT NULL
    CONSTRAINT fk_pPhysician_EmployeeID REFERENCES Physician(EmployeeID)
);
