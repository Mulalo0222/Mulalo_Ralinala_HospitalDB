SELECT Name 
  FROM Physician 
 WHERE EmployeeID IN 
       (
         SELECT Physician FROM Undergoes x WHERE NOT EXISTS 
            (
               SELECT * FROM Trained_In 
                WHERE Treatment = [Procedure ]
                  AND Physician = x.Physician
            )
       );