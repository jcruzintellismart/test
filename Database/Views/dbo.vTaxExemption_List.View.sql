/****** Object:  View [dbo].[vTaxExemption_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vTaxExemption_List]
AS
SELECT     ID, Code, Amt, IsActive, Comment, Name
FROM         dbo.vTaxExemption
GO
