/****** Object:  View [dbo].[vMembershipPlan_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vMembershipPlan_Detail]
AS
SELECT  mpd.ID ,
        mpd.Name ,
        mpd.ID_MembershipPlan FROM dbo.tMembershipPlan_Detail mpd
GO
