SELECT * FROM Undergoes X
WHERE Patient <> 
(
    SELECT Patient FROM Stay S
    WHERE X.Stay = S.StayID
);