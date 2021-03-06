/****** Object:  View [dbo].[vApprover_Employee]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vApprover_Employee]
AS
	SELECT     
		ae.ID
		, ae.ID_Approver
		, ae.ID_Employee
		, per.[Name] AS Employee
		, ae.[Name]
		, e.IsActive
	FROM dbo.tApprover_Employee ae
	LEFT OUTER JOIN dbo.tEmployee e ON e.ID = ae.ID_Employee 
	LEFT OUTER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
GO
