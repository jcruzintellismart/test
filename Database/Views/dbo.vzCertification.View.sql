/****** Object:  View [dbo].[vzCertification]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzCertification]
AS

SELECT * FROM dbo.fCertification(1,1) Cer
GO
