/****** Object:  View [dbo].[vWebNotifications]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebNotifications]
AS
SELECT  wn.ID ,
        wn.DateTimeCreated ,
        wn.ID_User , --kanino ipapadala
        wn.ID_Employee , --kanino galing
        wn.Title ,
        wn.Body ,
        wn.IsView ,
        wn.IsSend ,
        wn.ID_WebNotificationsFilingType , --pag may laman ions notification
		--pag wala laman ID_WebNotificationsFilingType:
			-- *Gagawin POP-UP Notification
		wn.rID ,
		u.Name AS [User] ,
		e.Name AS Employee ,
		ft.Name AS WebNotificationsFilingType ,
		ft.ID_Menu ,
		ft.ID_ApplicationType ,
		m.Name AS Menu ,
		at.Name AS ApplicationType ,
		m.ID_MenuType ,
		wn.IsExpired ,
		ft.ID_FilingDocType ,
		fdt.Name AS FilingDocType
		FROM dbo.tWebNotifications wn
		LEFT JOIN dbo.tUser u WITH(NOLOCK) ON wn.ID_User = u.ID
		LEFT JOIN dbo.vEmployee e WITH(NOLOCK) ON wn.ID_Employee = e.ID
		LEFT JOIN dbo.tWebNotificationsFilingType ft WITH(NOLOCK) ON wn.ID_WebNotificationsFilingType = ft.ID
		LEFT JOIN dbo.tMenu m WITH(NOLOCK) ON ft.ID_Menu = m.ID
		LEFT JOIN dbo.tApplicationType at WITH(NOLOCK) ON ft.ID_ApplicationType =  at.ID
		LEFT JOIN dbo.tFilingDocType fdt WITH(NOLOCK) ON ft.ID_FilingDocType = fdt.ID
GO
