/****** Object:  View [dbo].[vApproverList_Staging]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vApproverList_Staging]
AS
	SELECT
		ID,
        Store,
        EmployeeCode,
        Approver1,
        Approver2,
        Approver3,
        Approver4,
        Approver5,
		RetryCount,
        ID_Process,
		ErrorMessage,
		IsProcessing
	FROM dbo.tApproverList_Staging
GO
