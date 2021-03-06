/****** Object:  View [dbo].[vBatchEmployeeSchedule_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vBatchEmployeeSchedule_Detail]
AS
SELECT 
dbo.fValidBatchEmployeeSchedule(besd.ID) Valid,
besd.ID,
besd.ID_BatchEmployeeSchedule,
besd.SeqNo,
besd.EmployeeCode,
besd.Schedule1,
besd.Schedule2,
besd.Schedule3,
besd.Schedule4,
besd.Schedule5,
besd.Schedule6,
besd.Schedule7,
besd.Comment,
besd.ID_Employee,
p.Name Employee,
besd.IsApplied
FROM dbo.tBatchEmployeeSchedule_Detail AS besd
INNER JOIN dbo.tEmployee AS e ON e.ID = besd.ID_Employee
INNER JOIN dbo.tPersona AS p ON p.ID = e.ID_Persona
GO
