/****** Object:  View [dbo].[vLevel]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLevel]
AS
SELECT L.ID
, L.Code
, L.Name
, L.ID_Company
, C.Name AS Company
, L.SeqNo
, L.IsActive
, L.Comment
, L.BonusParameter
FROM  dbo.tLevel AS L 
LEFT OUTER JOIN dbo.tCompany AS C ON L.ID_Company = C.ID
GO
