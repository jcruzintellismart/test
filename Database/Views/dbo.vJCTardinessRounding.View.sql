/****** Object:  View [dbo].[vJCTardinessRounding]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vJCTardinessRounding] 
AS


SELECT	
tr.ID
,tr.Code
,tr.Name
,tr.ImageFile
,tr.SeqNo
,tr.IsActive
,tr.Comment
,tr.ID_JobClass
,jcm.Name JobClass
,tr.LBound
,tr.UBound
,tr.Value
FROM tJCTardinessRounding tr
LEFT JOIN dbo.tJobClass jc ON jc.ID = tr.ID_JobClass
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
GO
