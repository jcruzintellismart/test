/****** Object:  View [dbo].[vLeave_Detail_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLeave_Detail_List]
AS
SELECT     ID, [Date], --ID_HalfDay
HalfDay
, Days, WithPay,ForTardy,ForUT,Hours, Comment
FROM         dbo.vLeave_Detail
GO
