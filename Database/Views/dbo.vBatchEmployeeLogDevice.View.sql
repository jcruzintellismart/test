/****** Object:  View [dbo].[vBatchEmployeeLogDevice]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vBatchEmployeeLogDevice]
AS
SELECT     beld.ID, beld.ID_BatchFingerDataTransfer, beld.Comment, beld.ID_LogDevice, ld.Name AS LogDevice, ld.IPAddress
FROM         dbo.tBatchEmployeeLogDevice AS beld LEFT OUTER JOIN
                      dbo.tBatchFingerDataTransfer AS bfdt ON beld.ID_BatchFingerDataTransfer = bfdt.ID LEFT OUTER JOIN
                      dbo.tLogDevice AS ld ON beld.ID_LogDevice = ld.ID
GO
