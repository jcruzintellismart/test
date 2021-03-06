/****** Object:  View [dbo].[vEmployeeAttendanceLogFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeAttendanceLogFile]
AS
SELECT EALF.ID,
       EALF.Code,
       EALF.Name,
       EALF.ID_Company,
       EALF.SeqNo,
       EALF.IsActive,
       EALF.Comment,
       EALF.DateTimeCreated,
       EALF.DateTimeModified,
       EALF.DateCreated,
       EALF.DateModified,
       EALF.Path,
       EALF.StartDateTime,
       EALF.EndDateTime,
       EALF.ID_Branch,
       C.Name AS Company,
       bm.Name AS Branch,
       EALF.DateExecuted
FROM dbo.tEmployeeAttendanceLogFile EALF
LEFT OUTER JOIN dbo.tBranch B ON EALF.ID_Branch = B.ID
LEFT OUTER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = B.ID_BranchMaintenance
LEFT OUTER JOIN dbo.tCompany C ON EALF.ID_Company = C.ID;
GO
