CREATE TABLE On_Call (
  Nurse INTEGER NOT NULL
    CONSTRAINT fk_On_Call_ToNurse_EmployeeID REFERENCES Nurse(EmployeeID),
  BlockFloor INTEGER NOT NULL,
  BlockCode INTEGER NOT NULL,
  [Start] DATETIME NOT NULL,
  [End] DATETIME NOT NULL,
  PRIMARY KEY(Nurse, BlockFloor, BlockCode, Start, [End]),
  FOREIGN KEY(BlockFloor, BlockCode) REFERENCES [Block]
);