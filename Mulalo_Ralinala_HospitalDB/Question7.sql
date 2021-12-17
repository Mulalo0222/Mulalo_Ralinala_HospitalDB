SELECT N.Name FROM Nurse N
WHERE EmployeeID IN
(
SELECT OC.Nurse FROM On_Call OC, Room R
WHERE OC.BlockFloor = R.BlockFloor
AND OC.BlockCode = R.BlockCode
AND R.Number = 123
);