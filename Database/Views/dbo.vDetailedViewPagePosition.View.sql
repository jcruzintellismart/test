/****** Object:  View [dbo].[vDetailedViewPagePosition]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vDetailedViewPagePosition]
AS
SELECT 1 ID, 'Title' NAME
UNION ALL
SELECT 2 ID, 'Sub Title' NAME
UNION ALL
SELECT 3 ID, 'Sub Header Title' NAME
UNION ALL
SELECT 4 ID, 'Description' NAME
UNION ALL
SELECT 5 ID, 'Footer' NAME
GO
