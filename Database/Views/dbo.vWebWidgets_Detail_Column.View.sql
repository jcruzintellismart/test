/****** Object:  View [dbo].[vWebWidgets_Detail_Column]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebWidgets_Detail_Column]
AS
SELECT DISTINCT  wwdc.ID ,
        wwdc.ID_WebWidgets_Detail ,
        wwdc.Name ,
        wwdc.Label ,
        wwdc.SeqNo ,
        wwdc.IsActive ,
		CAST(aa.DataType AS VARCHAR(1000)) DataType FROM dbo.tWebWidgets_Detail_Column wwdc
		LEFT JOIN dbo.tWebWidgets_Detail wwd ON wwdc.ID_WebWidgets_Detail = wwd.ID
		LEFT JOIN dbo.tMenu m ON wwd.ID_Menu = m.ID
		CROSS APPLY (SELECT DataType FROM dbo.fViewSchema(ISNULL(m.TableName, wwd.BaseTable), 'v' + SUBSTRING(ISNULL(m.TableName, wwd.BaseTable), 2, LEN(ISNULL(m.TableName, wwd.BaseTable)))) WHERE ColumnName = wwdc.Name) aa
GO
