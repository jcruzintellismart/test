/****** Object:  View [dbo].[vDeviceManager]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDeviceManager]
AS
SELECT     dbo.tDeviceManager.ID, dbo.tDeviceManager.Code, dbo.tDeviceManager.Name, dbo.tDeviceManager.ImageFile, dbo.tDeviceManager.SeqNo, 
                      dbo.tDeviceManager.IsActive, dbo.tDeviceManager.Comment, dbo.tDeviceManager.StartDate, dbo.tDeviceManager.EndDate, 
                      dbo.tCompany.Name AS Company, dbo.tDeviceManager.ID_Company
FROM         dbo.tDeviceManager LEFT OUTER JOIN
                      dbo.tCompany ON dbo.tDeviceManager.ID_Company = dbo.tCompany.ID
GO
