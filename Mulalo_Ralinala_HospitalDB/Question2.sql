SELECT P.Name AS Physician, Pr.Name AS [Procedure], X.Date, Pt.Name AS Patient 
FROM Physician P, Undergoes X, Patient Pt, [Procedure] Pr
WHERE X.Patient = Pt.SSN
AND X.[Procedure] = Pr.Code
AND X.Physician = P.EmployeeID
AND NOT EXISTS 
(
SELECT * FROM Trained_In T
WHERE T.Treatment = X.[Procedure] 
AND T.Physician = X.Physician
);