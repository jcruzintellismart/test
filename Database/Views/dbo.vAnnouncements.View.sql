/****** Object:  View [dbo].[vAnnouncements]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAnnouncements]
AS
SELECT  a.ID ,
        a.Code ,
        a.Name ,
        a.ImageFile ,
        a.SeqNo ,
        a.IsActive ,
        a.Comment ,
        a.DateTimeCreated ,
        a.ID_CreatedBy ,
        a.DateTimeModified ,
        a.ID_ModifiedBy ,
        a.DateToShow ,
		a.StartDate,
        a.EndDate,
		a.ID_ApplicationType,
		ISNULL(ISNULL(per.Name,u.Name),LogInName) [User],
		CASE WHEN ad.ID_Announcements IS NOT NULL THEN 1 ELSE 0 END [HasAttachment]
		,IsPosted
		,at.Name AS ApplicationType
		,a.ID_AnnouncementType
		,at2.Name [AnnouncementType],
		CONVERT(VARCHAR(3),a.StartDate,100) [Month],
		DAY(a.StartDate) [Day],
		DATENAME(WEEKDAY,a.StartDate) [WeekDay]
		FROM dbo.tAnnouncements a
		LEFT OUTER JOIN dbo.tUser u ON u.ID = ID_CreatedBy
		LEFT OUTER JOIN dbo.tEmployee e ON e.ID = u.ID_Employee
		LEFT OUTER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
		LEFT OUTER JOIN dbo.tApplicationType at ON a.ID_ApplicationType = at.ID
		LEFT OUTER JOIN dbo.tAnnouncementType at2 ON at2.ID = a.ID_AnnouncementType
		LEFT JOIN (SELECT DISTINCT aa.ID_Announcements FROM dbo.tAnnouncements_Detail aa) ad ON ad.ID_Announcements = a.ID
GO
