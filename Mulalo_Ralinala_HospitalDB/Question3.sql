SELECT Name 
FROM Physician 
WHERE EmployeeID IN 
(
SELECT Physician FROM Undergoes U 
WHERE Date > 
(
SELECT CertificationExpires 
FROM Trained_In T 
WHERE T.Physician = U.Physician 
AND T.Treatment = U.[Procedure]
)
);