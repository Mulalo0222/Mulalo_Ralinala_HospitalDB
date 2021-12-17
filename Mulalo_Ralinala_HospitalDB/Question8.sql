SELECT ExaminationRoom, COUNT(AppointmentID)  Number FROM Appointment
GROUP BY ExaminationRoom;