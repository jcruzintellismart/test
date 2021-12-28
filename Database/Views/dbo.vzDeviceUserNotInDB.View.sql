/****** Object:  View [dbo].[vzDeviceUserNotInDB]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vzDeviceUserNotInDB]
AS

select 
 ID_LogDevice
,Name Device
,IPAddress
,SerialNo

,AccessNo
from vLogDeviceUser vldu
left join tLogDevice ld ON ld.ID = vldu.ID_LogDevice
GO
