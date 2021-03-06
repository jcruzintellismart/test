/****** Object:  View [dbo].[vOBFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOBFile_Detail]
AS
SELECT     obfd.ID, obfd.ID_OBFile, obfd.EmployeeCode, obfd.ID_Employee, obfd.[Date], obfd.StartTime, obfd.EndTime, obfd.Reason, obfd.StartMinute, obfd.EndMinute, 
                      obfd.IsApplied, obfd.IsActive, obfd.Comment, obfd.ComputedTimeIn, obfd.ComputedTimeOut, e.Name AS Employee,dbo.fIsValidOBFile_Detail(obfd.ID) Valid
FROM         dbo.tOBFile_Detail obfd LEFT OUTER JOIN
                      dbo.vEmployee e ON obfd.EmployeeCode = e.Code
GO
