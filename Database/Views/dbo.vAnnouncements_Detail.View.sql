/****** Object:  View [dbo].[vAnnouncements_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vAnnouncements_Detail]
AS

SELECT ID, Name, Name_GUID, ID_Announcements FROM dbo.tAnnouncements_Detail
GO
