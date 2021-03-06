/****** Object:  View [dbo].[vDeviceManagerLogDevice]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDeviceManagerLogDevice]
AS
SELECT     dbo.tDeviceManagerLogDevice.ID_DeviceManager, dbo.tDeviceManagerLogDevice.ID_LogDevice, dbo.tDeviceManagerLogDevice.Comment, 
                      dbo.tLogDevice.Name AS LogDevice, dbo.tLogDevice.IPAddress, dbo.tDeviceManagerLogDevice.ID
FROM         dbo.tDeviceManagerLogDevice INNER JOIN
                      dbo.tDeviceManager ON dbo.tDeviceManagerLogDevice.ID_DeviceManager = dbo.tDeviceManager.ID INNER JOIN
                      dbo.tLogDevice ON dbo.tDeviceManagerLogDevice.ID_LogDevice = dbo.tLogDevice.ID
GO
