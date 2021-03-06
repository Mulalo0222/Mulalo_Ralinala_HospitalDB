USE [HospitalDb]
GO
/****** Object:  Table [dbo].[Affiliated_With]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Affiliated_With](
	[Physician] [int] NOT NULL,
	[Department] [int] NOT NULL,
	[PrimaryAffiliation] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Physician] ASC,
	[Department] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[AppointmentID] [int] NOT NULL,
	[Patient] [int] NOT NULL,
	[PrepNurse] [int] NULL,
	[Physician] [int] NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
	[ExaminationRoom] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Block]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Block](
	[Floor] [int] NOT NULL,
	[Code] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Floor] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] NOT NULL,
	[Name] [text] NOT NULL,
	[Head] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medication]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medication](
	[Code] [int] NOT NULL,
	[Name] [text] NOT NULL,
	[Brand] [text] NOT NULL,
	[Description] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nurse]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nurse](
	[EmployeeID] [int] NOT NULL,
	[Name] [text] NOT NULL,
	[Position] [text] NOT NULL,
	[Registered] [bit] NOT NULL,
	[SSN] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[On_Call]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[On_Call](
	[Nurse] [int] NOT NULL,
	[BlockFloor] [int] NOT NULL,
	[BlockCode] [int] NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nurse] ASC,
	[BlockFloor] ASC,
	[BlockCode] ASC,
	[Start] ASC,
	[End] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[SSN] [int] NOT NULL,
	[Name] [text] NOT NULL,
	[Address] [text] NOT NULL,
	[Phone] [text] NOT NULL,
	[InsuranceID] [int] NOT NULL,
	[PCP] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Physician]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Physician](
	[EmployeeID] [int] NOT NULL,
	[Name] [text] NOT NULL,
	[Position] [text] NOT NULL,
	[SSN] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescribes]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescribes](
	[Physician] [int] NOT NULL,
	[Patient] [int] NOT NULL,
	[Medication] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Appointment] [int] NULL,
	[Dose] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Physician] ASC,
	[Patient] ASC,
	[Medication] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Procedure]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procedure](
	[Code] [int] NOT NULL,
	[Name] [text] NOT NULL,
	[Cost] [real] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Number] [int] NOT NULL,
	[Type] [text] NOT NULL,
	[BlockFloor] [int] NOT NULL,
	[BlockCode] [int] NOT NULL,
	[Unavailable] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stay]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stay](
	[StayID] [int] NOT NULL,
	[Patient] [int] NOT NULL,
	[Room] [int] NOT NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trained_In]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trained_In](
	[Physician] [int] NOT NULL,
	[Treatment] [int] NOT NULL,
	[CertificationDate] [datetime] NOT NULL,
	[CertificationExpires] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Physician] ASC,
	[Treatment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Undergoes]    Script Date: 2021/07/20 16:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Undergoes](
	[Patient] [int] NOT NULL,
	[Procedure] [int] NOT NULL,
	[Stay] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Physician] [int] NOT NULL,
	[AssistingNurse] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Patient] ASC,
	[Procedure] ASC,
	[Stay] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Affiliated_With]  WITH CHECK ADD  CONSTRAINT [fk_Affiliated_With_ToDepartment_DepartmentID] FOREIGN KEY([Department])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Affiliated_With] CHECK CONSTRAINT [fk_Affiliated_With_ToDepartment_DepartmentID]
GO
ALTER TABLE [dbo].[Affiliated_With]  WITH CHECK ADD  CONSTRAINT [fk_Affiliated_With_ToPhysician_EmployeeID] FOREIGN KEY([Physician])
REFERENCES [dbo].[Physician] ([EmployeeID])
GO
ALTER TABLE [dbo].[Affiliated_With] CHECK CONSTRAINT [fk_Affiliated_With_ToPhysician_EmployeeID]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [fk_Appointment_ToNurse_EmployeeID] FOREIGN KEY([PrepNurse])
REFERENCES [dbo].[Nurse] ([EmployeeID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [fk_Appointment_ToNurse_EmployeeID]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [fk_Appointment_ToPatient_SSN] FOREIGN KEY([Patient])
REFERENCES [dbo].[Patient] ([SSN])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [fk_Appointment_ToPatient_SSN]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [fk_Appointment_ToPhysician_EmployeeID] FOREIGN KEY([Physician])
REFERENCES [dbo].[Physician] ([EmployeeID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [fk_Appointment_ToPhysician_EmployeeID]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [fk_Physician_EmployeeID] FOREIGN KEY([Head])
REFERENCES [dbo].[Physician] ([EmployeeID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [fk_Physician_EmployeeID]
GO
ALTER TABLE [dbo].[On_Call]  WITH CHECK ADD FOREIGN KEY([BlockFloor], [BlockCode])
REFERENCES [dbo].[Block] ([Floor], [Code])
GO
ALTER TABLE [dbo].[On_Call]  WITH CHECK ADD  CONSTRAINT [fk_On_Call_ToNurse_EmployeeID] FOREIGN KEY([Nurse])
REFERENCES [dbo].[Nurse] ([EmployeeID])
GO
ALTER TABLE [dbo].[On_Call] CHECK CONSTRAINT [fk_On_Call_ToNurse_EmployeeID]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [fk_Patient_ToPhysician_EmployeeID] FOREIGN KEY([PCP])
REFERENCES [dbo].[Physician] ([EmployeeID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [fk_Patient_ToPhysician_EmployeeID]
GO
ALTER TABLE [dbo].[Prescribes]  WITH CHECK ADD  CONSTRAINT [fk_Prescribes_ToAppointment_AppointmentID] FOREIGN KEY([Appointment])
REFERENCES [dbo].[Appointment] ([AppointmentID])
GO
ALTER TABLE [dbo].[Prescribes] CHECK CONSTRAINT [fk_Prescribes_ToAppointment_AppointmentID]
GO
ALTER TABLE [dbo].[Prescribes]  WITH CHECK ADD  CONSTRAINT [fk_Prescribes_ToMedication_Code] FOREIGN KEY([Medication])
REFERENCES [dbo].[Medication] ([Code])
GO
ALTER TABLE [dbo].[Prescribes] CHECK CONSTRAINT [fk_Prescribes_ToMedication_Code]
GO
ALTER TABLE [dbo].[Prescribes]  WITH CHECK ADD  CONSTRAINT [fk_Prescribes_ToPatient_SSN] FOREIGN KEY([Patient])
REFERENCES [dbo].[Patient] ([SSN])
GO
ALTER TABLE [dbo].[Prescribes] CHECK CONSTRAINT [fk_Prescribes_ToPatient_SSN]
GO
ALTER TABLE [dbo].[Prescribes]  WITH CHECK ADD  CONSTRAINT [fk_Prescribes_ToPhysician_EmployeeID] FOREIGN KEY([Physician])
REFERENCES [dbo].[Physician] ([EmployeeID])
GO
ALTER TABLE [dbo].[Prescribes] CHECK CONSTRAINT [fk_Prescribes_ToPhysician_EmployeeID]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([BlockFloor], [BlockCode])
REFERENCES [dbo].[Block] ([Floor], [Code])
GO
ALTER TABLE [dbo].[Stay]  WITH CHECK ADD  CONSTRAINT [fk_Stay_ToPatient_SSN] FOREIGN KEY([Patient])
REFERENCES [dbo].[Patient] ([SSN])
GO
ALTER TABLE [dbo].[Stay] CHECK CONSTRAINT [fk_Stay_ToPatient_SSN]
GO
ALTER TABLE [dbo].[Stay]  WITH CHECK ADD  CONSTRAINT [fk_Stay_ToRoom_Number] FOREIGN KEY([Room])
REFERENCES [dbo].[Room] ([Number])
GO
ALTER TABLE [dbo].[Stay] CHECK CONSTRAINT [fk_Stay_ToRoom_Number]
GO
ALTER TABLE [dbo].[Trained_In]  WITH CHECK ADD  CONSTRAINT [fk_Trained_In_ToPhysician_EmployeeID] FOREIGN KEY([Physician])
REFERENCES [dbo].[Physician] ([EmployeeID])
GO
ALTER TABLE [dbo].[Trained_In] CHECK CONSTRAINT [fk_Trained_In_ToPhysician_EmployeeID]
GO
ALTER TABLE [dbo].[Trained_In]  WITH CHECK ADD  CONSTRAINT [fk_Trained_In_ToProcedure_Code] FOREIGN KEY([Treatment])
REFERENCES [dbo].[Procedure] ([Code])
GO
ALTER TABLE [dbo].[Trained_In] CHECK CONSTRAINT [fk_Trained_In_ToProcedure_Code]
GO
ALTER TABLE [dbo].[Undergoes]  WITH CHECK ADD  CONSTRAINT [fk_Undergoes_ToNurse_EmployeeID] FOREIGN KEY([AssistingNurse])
REFERENCES [dbo].[Nurse] ([EmployeeID])
GO
ALTER TABLE [dbo].[Undergoes] CHECK CONSTRAINT [fk_Undergoes_ToNurse_EmployeeID]
GO
ALTER TABLE [dbo].[Undergoes]  WITH CHECK ADD  CONSTRAINT [fk_Undergoes_ToPatient_SSN] FOREIGN KEY([Patient])
REFERENCES [dbo].[Patient] ([SSN])
GO
ALTER TABLE [dbo].[Undergoes] CHECK CONSTRAINT [fk_Undergoes_ToPatient_SSN]
GO
ALTER TABLE [dbo].[Undergoes]  WITH CHECK ADD  CONSTRAINT [fk_Undergoes_ToPhysician_EmployeeID] FOREIGN KEY([Physician])
REFERENCES [dbo].[Physician] ([EmployeeID])
GO
ALTER TABLE [dbo].[Undergoes] CHECK CONSTRAINT [fk_Undergoes_ToPhysician_EmployeeID]
GO
ALTER TABLE [dbo].[Undergoes]  WITH CHECK ADD  CONSTRAINT [fk_Undergoes_ToProcedure_Code] FOREIGN KEY([Procedure])
REFERENCES [dbo].[Procedure] ([Code])
GO
ALTER TABLE [dbo].[Undergoes] CHECK CONSTRAINT [fk_Undergoes_ToProcedure_Code]
GO
ALTER TABLE [dbo].[Undergoes]  WITH CHECK ADD  CONSTRAINT [fk_Undergoes_ToStay_StayID] FOREIGN KEY([Stay])
REFERENCES [dbo].[Stay] ([StayID])
GO
ALTER TABLE [dbo].[Undergoes] CHECK CONSTRAINT [fk_Undergoes_ToStay_StayID]
GO
