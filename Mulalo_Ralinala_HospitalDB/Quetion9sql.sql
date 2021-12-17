SELECT Pt.Name, PhPCP.Name FROM Patient Pt, Physician PhPCP
WHERE Pt.PCP = PhPCP.EmployeeID
AND EXISTS
(
SELECT * FROM Prescribes Pr
WHERE Pr.Patient = Pt.SSN
AND Pr.Physician = Pt.PCP
)
AND EXISTS
(
SELECT * FROM Undergoes U, [Procedure] Pr
WHERE U.[Procedure] = Pr.Code
AND U.Patient = Pt.SSN
AND Pr.Cost > 5000
)
AND 2 <=
(
SELECT COUNT(A.AppointmentID) FROM Appointment A, Nurse N
WHERE A.PrepNurse = N.EmployeeID
AND N.Registered = 1
)
AND NOT Pt.PCP IN
(
SELECT Head FROM Department
);