/****** Object:  View [dbo].[vBankSetting]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vBankSetting]
AS
SELECT     bs.Name, bs.Value, bs.ID_Bank, b.Name AS Bank, bs.SeqNo, bs.Comment, bs.ID
FROM         dbo.tBankSetting AS bs LEFT OUTER JOIN
                      dbo.tBank AS b ON bs.ID_Bank = b.ID
GO
