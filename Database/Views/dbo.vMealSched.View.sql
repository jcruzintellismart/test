/****** Object:  View [dbo].[vMealSched]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vMealSched]
AS
SELECT     ID, Code, Name, StartMinute, LastCallMinute, EndMinute, ID_Transaction_Created, ID_Transaction_Modified, Active, Comment, StartTime, 
                      LastCallTime, EndTime, DateTimeCreated, DateTimeModified, DateCreated, DateModified, SUBSTRING(CONVERT(varchar, StartTime, 0), 13, 7) 
                      AS StartTimeString, SUBSTRING(CONVERT(varchar, LastCallTime, 0), 13, 7) AS LastCallTimeString, SUBSTRING(CONVERT(varchar, EndTime, 0), 13, 7) 
                      AS EndTimeString, MealAmt, NULL SeqNo
FROM         dbo.tMealSched
GO
