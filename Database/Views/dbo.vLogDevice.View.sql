/****** Object:  View [dbo].[vLogDevice]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vLogDevice]
AS
SELECT     ID, Code, Name, IPAddress, SerialNo, SeqNo, IsActive, Comment, WithCard, IsConnected, Color, MacAddress, IsEnabled, Firmware, AdminCount, 
                      RegUserCount, FingerCount, PassCount, AttCount, FingerCap, UserCap, AttCap
FROM         dbo.tLogDevice AS ld
GO
