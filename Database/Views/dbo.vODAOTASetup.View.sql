/****** Object:  View [dbo].[vODAOTASetup]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vODAOTASetup] 
AS
SELECT	
o.ID,
o.Code,
o.Name,
o.ImageFile,
o.SeqNo,
o.IsActive,
o.Comment,
o.ID_Company,
c.Name Company,
o.WithODA,
o.WithOTA,
o.WithND,
o.ID_TimekeepingFrequency,
tf.Name TimekeepingFrequency,
o.CanFileOffset,
o.CanFilePayroll,
o.AutoApproveRestDay,
o.AutoApproveHoliday,
o.EnableHolidayPolicy
,o.NoWorkNoPayOnSH
,o.NoWorkNoPayOnLH
,o.AB_AD_SH_hasREG
,o.AB_AD_LH_hasREG
,o.AB_AD_SH_isAbsent
,o.AB_AD_LH_isAbsent
,o.AB_PD_SH_Premium
,o.AB_PD_LH_Premium
,o.PB_AD_SH_hasReg
,o.PB_AD_LH_hasReg
FROM tODAOTASetup o
INNER JOIN dbo.tCompany AS c ON c.ID = o.ID_Company
LEFT JOIN dbo.tTimekeepingFrequency AS tf ON tf.ID = o.ID_TimekeepingFrequency
GO
