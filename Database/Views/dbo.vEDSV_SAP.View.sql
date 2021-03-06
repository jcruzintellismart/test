/****** Object:  View [dbo].[vEDSV_SAP]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEDSV_SAP]
AS
SELECT edsv.ID,
       edsv.Code,
       edsv.StartDate,
       edsv.EndDate,
       edsv.Company,
       edsv.Store,
       edsv.StoreCode,
       edsv.Brand,
       edsv.BrandCode,
       edsv.PostingDate,
       ISNULL(edsv.IsSAPProcessed, 0) IsSAPProcessed
FROM dbo.vEmployeeDailyScheduleView edsv
    --LEFT JOIN tEDSV_SAPProcessed sap
    --    ON sap.ID_EmployeeDailyScheduleView = edsv.ID;
GO
