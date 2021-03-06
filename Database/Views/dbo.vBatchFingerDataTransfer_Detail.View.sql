/****** Object:  View [dbo].[vBatchFingerDataTransfer_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vBatchFingerDataTransfer_Detail]
AS
SELECT     dbo.tBatchFingerDataTransfer_Detail.ID, dbo.tBatchFingerDataTransfer_Detail.ID_BatchFingerDataTransfer, 
                      dbo.tBatchFingerDataTransfer_Detail.ID_Employee, dbo.vEmployee.Name AS Employee, dbo.vEmployee.Code, dbo.tEmployeeFingerPrint.F1, 
                      dbo.tEmployeeFingerPrint.F2, dbo.tEmployeeFingerPrint.F3, dbo.tEmployeeFingerPrint.F4, dbo.tEmployeeFingerPrint.F5, dbo.tEmployeeFingerPrint.F6, 
                      dbo.tEmployeeFingerPrint.F7, dbo.tEmployeeFingerPrint.F8, dbo.tEmployeeFingerPrint.F9, dbo.tEmployeeFingerPrint.F10
FROM         dbo.tBatchFingerDataTransfer_Detail LEFT OUTER JOIN
                      dbo.tEmployeeFingerPrint ON dbo.tBatchFingerDataTransfer_Detail.ID_Employee = dbo.tEmployeeFingerPrint.ID_Employee LEFT OUTER JOIN
                      dbo.vEmployee ON dbo.tBatchFingerDataTransfer_Detail.ID_Employee = dbo.vEmployee.ID
GO
