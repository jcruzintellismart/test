/****** Object:  View [dbo].[vLeave_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLeave_Detail]
AS
SELECT     ld.ID, ld.ID_Leave, ld.ID_HalfDay, ld.Date, ld.Days, ld.Comment, hd.Name AS HalfDay, ld.WithPay, dbo.tLeave.ID_Employee, ld.ID_LeaveConversion, ld.ForTardy, 
                      ld.ForUT, ld.HOURS, ld.Minutes
FROM         dbo.tLeave_Detail AS ld LEFT OUTER JOIN
                      dbo.tLeave ON ld.ID_Leave = dbo.tLeave.ID LEFT OUTER JOIN
                      dbo.tHalfDay AS hd ON ld.ID_HalfDay = hd.ID
GO
