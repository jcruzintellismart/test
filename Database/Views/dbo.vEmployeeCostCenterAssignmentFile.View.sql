/****** Object:  View [dbo].[vEmployeeCostCenterAssignmentFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeCostCenterAssignmentFile]
AS
SELECT     eccaf.ID, eccaf.Code, eccaf.Name, eccaf.ImageFile, eccaf.SeqNo, eccaf.IsActive, eccaf.Comment, eccaf.ID_Company, c.Name AS Company,eccaf.ID_FilingStatus,fs.Name FilingStatus,eccaf.IsExecuted,eccaf.DateExecuted
FROM         dbo.tEmployeeCostCenterAssignmentFile AS eccaf LEFT OUTER JOIN
                      dbo.tCompany AS c ON eccaf.ID_Company = c.ID LEFT OUTER JOIN 
                      dbo.tFilingStatus fs ON fs.ID=eccaf.ID_FilingStatus
GO
