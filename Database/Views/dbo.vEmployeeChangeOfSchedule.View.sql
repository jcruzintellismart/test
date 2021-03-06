/****** Object:  View [dbo].[vEmployeeChangeOfSchedule]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmployeeChangeOfSchedule] 
AS 
  SELECT t.ID, 
         t.ID_Employee, 
         per.NAME AS Employee, 
         per.NAME, 
         t.DateFiled, 
         t.StartDate, 
         t.EndDate, 
         t.ID_FilingStatus, 
         fs.NAME AS FilingStatus, 
         t.ApproverStatus, 
         t.FileDate, 
         t.Comment, 
         t.ApprovalDate, 
         t.IsPosted, 
         t.DateCreated, 
         t.Reason, 
         t.ApproverComment, 
         --dbo.Fgetapprovalhistory(t.id, 5) AS ApprovalHistory, 
         --dbo.Fgetlastapprovercomment(t.id, 5) AS PreviousApproverComment, 
		 t.ApprovalHistory,
		 t.PreviousApproverComment,
         per.ImageFile, 
         g.NAME AS Gender, 
         CONVERT(DATETIME, t.ApprovalDate, 101) AS DateApproved, 
         t.IsExecuted, 
         t.DateExecuted, 
         t.DateModified, 
         t.ID_User, 
         u.NAME AS [User]--, 
         --dbo.Fgetlastapprover(t.id, 5) AS LastApprover 
		 , t.[GUID]
  FROM   dbo.temployeechangeofschedule AS t 
         LEFT OUTER JOIN dbo.temployee AS e 
                      ON e.id = t.id_employee 
         LEFT OUTER JOIN dbo.tpersona AS per 
                      ON per.id = e.id_persona 
         LEFT OUTER JOIN dbo.tgender AS g 
                      ON g.id = per.id_gender 
         LEFT OUTER JOIN dbo.tfilingstatus AS fs 
                      ON fs.id = t.id_filingstatus 
         LEFT OUTER JOIN tuser u 
                      ON u.id = t.id_user
GO
