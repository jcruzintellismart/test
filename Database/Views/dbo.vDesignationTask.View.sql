/****** Object:  View [dbo].[vDesignationTask]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDesignationTask]
AS
SELECT     ID, Code, Name, Description, SeqNo, IsActive, Comment, ID_Designation
FROM         dbo.tDesignationTask
GO
