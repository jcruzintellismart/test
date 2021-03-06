/****** Object:  View [dbo].[vTKAppRestriction_Detail]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vTKAppRestriction_Detail] AS 
SELECT tard.ID
     , tard.ID_TKAppRestriction
     , tard.Days
     , tard.DaysBefore
     , tard.IsBeforeEndDate
     , tard.DaysAfter
     , tard.IsAfterEndDate
     , tard.ForAttachment
     , tard.FCutoffStartDay
     , tard.SCutoffStartDay
     , tard.MaxFilePerCutoff
     , tard.DateTimeCreated
     , tard.DateTimeModified
     , tard.Comment
     , tard.SeqNo 
	 , tard.TimeBefore
	 , tard.RestrictFrom
	 , tard.RestrictTo
	 , tard.DaysRequireAttachment
	 , tard.MaxFilePerDay
FROM dbo.tTKAppRestriction_Detail tard
GO
