/****** Object:  View [dbo].[vEmployeeStatus]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmployeeStatus]
AS
SELECT     ID, Code, Name, es.IsDeactivatedEmployee, IsActive, Comment, DateTimeCreated, DateTimeModified, SeqNo, IsTerminated
FROM         dbo.tEmployeeStatus es
GO
