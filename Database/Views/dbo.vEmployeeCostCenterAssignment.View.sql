/****** Object:  View [dbo].[vEmployeeCostCenterAssignment]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeCostCenterAssignment]
AS
SELECT     ec.ID, ec.Code, ec.Name, ec.ImageFile, ec.SeqNo, ec.IsActive, ec.Comment, ec.ID_Employee, ec.StartDate, ec.EndDate, ec.ID_CostCenter, ec.FileDate, ec.ApproverStatus, ec.ID_FilingStatus, 
                      ec.ApprovalDate, ec.ID_ApproverEmployee, ec.ID_ShiftType, ec.ID_User, ec.Reason, ec.IsPosted, ec.ID_Department, per.Name AS Employee, cc.Name AS CostCenter, fs.Name AS FilingStatus,ec.DatePosted
FROM         dbo.tEmployeeCostCenterAssignment AS ec LEFT OUTER JOIN
                      dbo.tEmployee AS e ON e.ID = ec.ID_Employee LEFT OUTER JOIN
                      dbo.tPersona AS per ON per.ID = e.ID_Persona LEFT OUTER JOIN
                      dbo.tCostCenter AS cc ON cc.ID = ec.ID_CostCenter LEFT OUTER JOIN
                      dbo.tFilingStatus AS fs ON fs.ID = ec.ID_FilingStatus
GO
