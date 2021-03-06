/****** Object:  View [dbo].[vEmployeeBenefits]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeBenefits]
AS
SELECT  eb.ID ,
        eb.DateTimeCreated ,
        eb.ID_User ,
        eb.ID_FilingStatus ,
        eb.ID_Employee ,
        eb.EffectivityDate ,
		u.Name AS [User] ,
		fs.Name AS FilingStatus ,
		e.Name AS Employee FROM dbo.tEmployeeBenefits eb
		LEFT JOIN dbo.vUser u ON eb.ID_User = u.ID
		LEFT JOIN dbo.tFilingStatus fs ON eb.ID_FilingStatus = fs.ID
		LEFT JOIN dbo.vEmployee e ON eb.ID_Employee = e.ID
GO
