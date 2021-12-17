SELECT P.[Name] AS Physician, Pr.[Name] AS [Procedure], X.Date, Pt.Name AS Patient, T.CertificationExpires
FROM Physician P, Undergoes X, Patient Pt, [Procedure] Pr, Trained_In T
WHERE X.Patient = Pt.SSN
AND X.[Procedure] = Pr.Code
AND X.Physician = P.EmployeeID
AND Pr.Code = T.Treatment
AND P.EmployeeID = T.Physician
AND X.Date > T.CertificationExpires;