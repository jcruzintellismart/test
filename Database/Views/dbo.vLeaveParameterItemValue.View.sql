/****** Object:  View [dbo].[vLeaveParameterItemValue]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vLeaveParameterItemValue]
AS
SELECT     ID, ID_LeaveParameterItem, [Year], [Value], SeqNo, IsActive, Comment
FROM         dbo.tLeaveParameterItemValue
GO
