/****** Object:  View [dbo].[vEmployeePhotoFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW	[dbo].[vEmployeePhotoFile_Detail] 
AS
SELECT	
		epfd.ID ,
        epfd.Comment ,
        epfd.ID_EmployeePhotoFile ,
        epfd.ImageFile ,
        emp.ID ID_Employee,
		epfd.EmployeeCode,
		p.Name Employee

FROM 
	dbo.tEmployeePhotoFile_Detail epfd 
	LEFT OUTER JOIN dbo.tEmployee emp ON emp.Code = epfd.EmployeeCode
	LEFT OUTER JOIN dbo.tPersona p ON p.ID = emp.ID_Persona
GO
