/****** Object:  View [dbo].[vUserGroup]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vUserGroup]
AS
SELECT     ug.ID ,
           ug.Code ,
           ug.Name ,
           ug.CanViewEmployeeSalary ,
           ug.IsActive ,
           ug.Comment ,
           ug.CanViewDoorAccessDevice ,
           ug.ID_ApplicationType, at.Name [ApplicationType]
		   , NULL SeqNo
		   ,ug.isMyApproval
		   ,ug.isDirectReport
		   ,ug.isMyApplications
		   ,ug.isMyHR
		   ,ug.AllowEdit
		   ,ug.AllowDelete
		   ,ug.AllowNew
FROM         dbo.tUserGroup ug
LEFT JOIN dbo.tApplicationType at ON at.ID = ug.ID_ApplicationType
GO
