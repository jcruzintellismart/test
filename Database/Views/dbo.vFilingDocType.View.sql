/****** Object:  View [dbo].[vFilingDocType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFilingDocType]
AS
SELECT dt.ID ,
       dt.Name FROM dbo.tFilingDocType dt
GO
