/****** Object:  View [dbo].[vEmployeeFingerPrint]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeFingerPrint]
AS
SELECT     ID, ID_Employee, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10
FROM         dbo.tEmployeeFingerPrint AS efp
GO
