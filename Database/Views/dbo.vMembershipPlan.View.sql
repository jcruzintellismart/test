/****** Object:  View [dbo].[vMembershipPlan]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMembershipPlan]
AS
SELECT  mp.ID ,
        mp.DateTimeCreated ,
        mp.ID_User ,
        mp.Name ,
        mp.AnnualPlanRate ,
        mp.SemiAnnualPlanRate ,
        mp.QuarterlyPlanRate ,
        mp.MonthlyPlanRate ,
		u.Name AS [User] FROM dbo.tMembershipPlan mp
		LEFT JOIN dbo.vUser u ON mp.ID_User = u.ID
GO
