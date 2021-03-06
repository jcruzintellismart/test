/****** Object:  View [dbo].[vDocumentSeries]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDocumentSeries]
AS
SELECT     ds.ID, ds.ID_Company, ds.ID_Menu, m.Name AS Menu, ds.Prefix, ds.CurrentTransNo, ds.AddDate, ds.SeqNo, ds.IsActive, ds.Comment, m.TableName, ds.DigitCount, 
                      m.ImageFile, m.Name
FROM         dbo.tDocumentSeries AS ds LEFT OUTER JOIN
                      dbo.tMenu AS m ON ds.ID_Menu = m.ID
GO
