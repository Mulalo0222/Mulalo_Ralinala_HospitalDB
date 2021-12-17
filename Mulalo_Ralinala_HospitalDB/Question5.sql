SELECT Pt.Name AS Patient, Ph.Name AS Physician, N.Name AS Nurse, A.Start, A.[End], A.ExaminationRoom, PhPCP.Name AS PCP
FROM Patient Pt, Physician Ph, Physician PhPCP, Appointment A LEFT JOIN Nurse N ON A.PrepNurse = N.EmployeeID
WHERE A.Patient = Pt.SSN
AND A.Physician = Ph.EmployeeID
AND Pt.PCP = PhPCP.EmployeeID
AND A.Physician <> Pt.PCP;