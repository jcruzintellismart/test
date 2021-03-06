/****** Object:  View [dbo].[vEmployeeLogDevice]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeLogDevice]
AS
SELECT     eld.ID, eld.ID_Employee, eld.ID_LogDevice, eld.Comment, ld.Name AS LogDevice, ld.IPAddress AS IPAddress
FROM         dbo.tEmployeeLogDevice eld LEFT OUTER JOIN
                      dbo.tLogDevice ld ON eld.ID_LogDevice = ld.ID
GO
