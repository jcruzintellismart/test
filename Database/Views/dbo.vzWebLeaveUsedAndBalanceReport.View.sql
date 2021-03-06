/****** Object:  View [dbo].[vzWebLeaveUsedAndBalanceReport]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzWebLeaveUsedAndBalanceReport]
AS
SELECT  Date ,
        Employee ,
        UsedAsLeaveType ,
        Alloted ,
        USED ,
        Bal ,
        ID_Employee ,
        ID_TimekeepingItem ,
        ID_Company ,
        ID_Department ,
        Company ,
        Department, StartDate, EndDate FROM dbo.fLeaveUsedAndBalanceReport('1/1/2014', '12/31/2016')
GO
