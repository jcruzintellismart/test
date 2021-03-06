/****** Object:  View [dbo].[vEmployeeTemplateFile_Staging]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeTemplateFile_Staging]
AS
	SELECT 
		ID,
		IsValid,
		ID_Process,
		ErrorMessage,
        Application,
        EmployeeCode,
        LastName,
        FirstName,
        MiddleName,
        Company,
        CompanyEmail,
        Branch,
        BranchCode,
        Designation,
        EmployeeStatus,
        PayMode,
        JobClass,
        CostCenter,
        IsRequiredToLog,
        StartDate,
        EndDate,
        Store,
        Station,
        CBA,
        WithOTA,
        Region,
        District,
        Area,
        Brand
	FROM dbo.tEmployeeTemplateFile_Staging
GO
