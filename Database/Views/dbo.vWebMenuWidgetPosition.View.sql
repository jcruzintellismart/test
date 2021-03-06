/****** Object:  View [dbo].[vWebMenuWidgetPosition]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuWidgetPosition]
AS
SELECT a.ID, a.NAME, a.SeqNo FROM(
SELECT 1 ID, 'TOP' NAME, 1 SeqNo
UNION ALL
SELECT 2 ID, 'LEFT' NAME, 2 SeqNo
UNION ALL
SELECT 3 ID, 'RIGHT' NAME, 3 SeqNo
UNION ALL
SELECT 4 ID, 'BOTTOM' NAME, 4 SeqNo
) a
GO
