/****** Object:  View [dbo].[vEmployeeStatus_Staging]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeStatus_Staging] 
AS
	SELECT
		ID,
		EmployeeCode,
		EmployeeStatus
	FROM dbo.tEmployeeStatus_Staging
GO
