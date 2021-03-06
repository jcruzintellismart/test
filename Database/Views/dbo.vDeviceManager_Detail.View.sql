/****** Object:  View [dbo].[vDeviceManager_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDeviceManager_Detail]
AS
SELECT     ID, Code, ImageFile, SeqNo, IsActive, Comment, ID_DeviceManager, Source, AccessNo, DateTime, WorkDate, Date, Minute, DateTimeModified, 
                      DateTimeCreated, ID_AttendanceLogType
FROM         dbo.tDeviceManager_Detail
GO
