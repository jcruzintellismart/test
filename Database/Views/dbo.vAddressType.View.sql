/****** Object:  View [dbo].[vAddressType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vAddressType]
AS
SELECT     ID, Name, Code, SeqNo, Comment
FROM         dbo.tAddressType AS at
GO
