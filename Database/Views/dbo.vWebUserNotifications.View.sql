/****** Object:  View [dbo].[vWebUserNotifications]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebUserNotifications]   
AS  
SELECT   
	t.[ID]
,	t.ID_User
,	t.Message
,	t.ID_WebMenus
,	wm.Name AS WebMenus
,	CAST(t.ReferenceID AS VARCHAR(8000)) ReferenceID
,	t.IsView
,	t.IsSend
,	t.ID_Employee -- kung sino ung nagsend na notification
,	p.ImageFile
,	t.[DateTimeCreated]
,	DATEDIFF(WEEK,t.DateTimeCreated,GETDATE()) AS WeekSpan
,	DATEDIFF(DAY,t.DateTimeCreated,GETDATE()) AS DaySpan
,	DATEDIFF(HOUR,t.DateTimeCreated,GETDATE()) AS HourSpan
,	DATEDIFF(Minute,t.DateTimeCreated,GETDATE()) AS MinuteSpan
,	t.[ID_CreatedBy]
,	t.[ID_ModifiedBy]
,	cb.[Name] AS CreatedBy
,	mb.[Name] AS ModifiedyBy
,	p.Name1 AS Sender
,	t.Title
,	wm2.ID AS ID_Parent
FROM tWebUserNotifications t 
LEFT JOIN dbo.tUser cb ON cb.ID = t.ID_CreatedBy    
LEFT JOIN dbo.tUser mb ON mb.ID = t.ID_ModifiedBy
LEFT JOIN dbo.tWebMenus wm ON wm.ID = t.ID_WebMenus
LEFT JOIN dbo.tEmployee	e ON e.ID = t.ID_Employee
LEFT JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT JOIN dbo.tWebMenus wm2 ON wm.ID_WebMenus = wm2.ID
GO
