/****** Object:  View [dbo].[vCurrencyRate]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vCurrencyRate]
AS
SELECT     cr.ID, c.Name AS Currency, cr.Rate, cr.Date, c.ImageFile, cr.SeqNo, cr.IsActive, cr.Comment, cr.ID_Currency, c.Name
FROM         dbo.tCurrencyRate AS cr LEFT OUTER JOIN
                      dbo.tCurrency AS c ON cr.ID_Currency = c.ID
GO
