/****** Object:  View [dbo].[vLogDevice_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLogDevice_List]
AS
SELECT     ID, Code, Name, IPAddress, SerialNo, CAST(0 AS BIT) AS Connected, WithCard, SeqNo, IsActive, Comment, IsConnected, Color
FROM         dbo.vLogDevice AS ld
GO
