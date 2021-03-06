/****** Object:  View [dbo].[vFilingStatus]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vFilingStatus]
AS
SELECT        fs.ID,
			fs.Name,
			fs.ReadOnly,
			fs.Comment,
			fs.SeqNo,
			fs.HasComment,
			fs.Editable ,
			fs.ID_FilingstatusGroup,
			fg.Name FilingStatusGroup
			
FROM           dbo.tFilingStatus fs
LEFT OUTER JOIN dbo.tFilingStatusGroup fg ON fs.ID_FilingstatusGroup = fg.ID
WHERE fs.ID_FilingstatusGroup IN (1,2)
GO
