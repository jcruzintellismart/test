/****** Object:  View [dbo].[vTaxExemption]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vTaxExemption]
AS
SELECT     ID, Code, Name, Amt, IsActive, Comment, SeqNo
FROM         dbo.tTaxExemption WHERE code NOT LIKE '%HF%'
GO
