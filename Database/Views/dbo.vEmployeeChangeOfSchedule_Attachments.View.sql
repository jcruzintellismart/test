/****** Object:  View [dbo].[vEmployeeChangeOfSchedule_Attachments]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeChangeOfSchedule_Attachments]
AS
SELECT  ID ,
        Name ,
        Name_GUID ,
        ID_EmployeeChangeOfSchedule FROM dbo.tEmployeeChangeOfSchedule_Attachments
GO
