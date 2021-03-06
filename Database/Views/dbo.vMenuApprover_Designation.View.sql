/****** Object:  View [dbo].[vMenuApprover_Designation]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuApprover_Designation]
AS
SELECT mad.ID,
       mad.Code,
       mad.Name,
       mad.ImageFile,
       mad.SeqNo,
       mad.IsActive,
       mad.Comment,
       mad.ID_Designation,
       mad.ID_MenuApprover,
       dem.Name AS Designation
FROM dbo.tMenuApprover_Designation AS mad
LEFT OUTER JOIN dbo.tDesignation AS Des ON mad.ID_Designation = Des.ID
INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = des.ID_DesignationMaintenance;
GO
