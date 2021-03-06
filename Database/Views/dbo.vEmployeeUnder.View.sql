/****** Object:  View [dbo].[vEmployeeUnder]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeUnder]
AS
    SELECT DISTINCT TOP 9999999999
            va.ID_Employee AS ID ,
            tu.Name ,
            e.Code [EmployeeCode] ,
            e.Company ,
            e.Department ,
            e.Designation ,
            e.EmployeeStatus ,	
			e.AccessNo,
			e.StartDate,
            va.ID_User [ID_Approver] ,
            tu1.Name [Approver] ,
            tu.ID_Employee ,
			e.Name [Employee],
            ISNULL(ISNULL(p.ImageFile_GUID,tu.ImageFile),'avatar.png') [ProfilePicture]
    FROM    dbo.vApproverMatrix va
            INNER JOIN dbo.tUser tu ON va.ID_Employee = tu.ID_Employee
            INNER JOIN dbo.tUser tu1 ON va.ID_User = tu1.ID
            LEFT JOIN dbo.vEmployee e ON e.ID = va.ID_Employee
            LEFT JOIN dbo.tPersona p ON p.ID = e.ID_Persona
GO
