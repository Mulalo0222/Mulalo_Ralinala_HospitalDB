CREATE TABLE Appointment (
  AppointmentID INTEGER PRIMARY KEY NOT NULL,
  Patient INTEGER NOT NULL
    CONSTRAINT fk_Appointment_ToPatient_SSN REFERENCES Patient(SSN),
  PrepNurse INTEGER
    CONSTRAINT fk_Appointment_ToNurse_EmployeeID REFERENCES Nurse(EmployeeID),
  Physician INTEGER NOT NULL
    CONSTRAINT fk_Appointment_ToPhysician_EmployeeID REFERENCES Physician(EmployeeID),
  Start DATETIME NOT NULL,
  [End] DATETIME NOT NULL,
  ExaminationRoom TEXT NOT NULL
);