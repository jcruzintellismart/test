/****** Object:  View [dbo].[vVersionHistory]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vVersionHistory] AS SELECT [ID], [Version], [PC], [Description], [Date], [Status], [IsActive] FROM dbo.tVersionHistory
GO
