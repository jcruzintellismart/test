/****** Object:  View [dbo].[vMenuSubDataSource]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuSubDataSource]
AS
SELECT     ID, Name, ID_Menu, SeqNo, Comment, DataSource
FROM         dbo.tMenuSubDataSource msds
GO
