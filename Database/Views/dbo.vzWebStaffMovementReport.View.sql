/****** Object:  View [dbo].[vzWebStaffMovementReport]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzWebStaffMovementReport]
AS
SELECT 
	0 AS ID_EmployeeMovement,
	0 AS ID_Employee,
	0 AS ID_User,
	dbo.fGetDate() AS StartDate,
	dbo.fGetDate() AS EndDate
GO
