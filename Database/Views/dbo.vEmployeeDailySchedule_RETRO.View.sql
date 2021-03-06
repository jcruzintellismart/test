/****** Object:  View [dbo].[vEmployeeDailySchedule_RETRO]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW	 [dbo].[vEmployeeDailySchedule_RETRO]
AS
SELECT TOP (100) PERCENT
    EDS.ID_EmployeeDailySchedule ID,
    EDS.Date,
    EDS.ID_DailySchedule,
    EDS.ID_Employee,
    EDS.Comment,
    P.Name AS Employee,
    DS.Name AS DailySchedule,
    EDS.IsRD,
    EDS.ID_Branch,
    EDS.ID_Department AS ID_Department,
    EDS.ID_Designation AS ID_Designation,
    EDS.ID_ImportedSchedule,
    EDS.ID_Attribute,
    EDS.REG,
    EDS.EXT,
    EDS.OT,
    EDS.ND,
    EDS.NDOT,
    EDS.TARDY,
    EDS.UT,
    EDS.ID_Company AS ID_Company,
    WS.Code AS Day,
    E.Code AS EmployeeCode,
    E.ID_EmployeeStatus,
    P.ID_Gender,
    EDS.IsForComputation,
    EDS.ID_TimekeepingItem,
    EDS.ID_FirstHalfTimekeepingItem,
    EDS.ID_SecondHalfTimekeepingItem,
    EDS.IsAbsent,
    EDS.TimeIn,
    EDS.TimeOut,
    P.ImageFile,
    EDS.ActualTardy,
    E.AccessNo,
    EDS.IsActualAbsent,
    EDS.OTA,
    EDS.ODA,
    EDS.LHREG,
    EDS.LHND,
    EDS.LHOT,
    EDS.LHNDOT,
    EDS.EXC,
    EDS.EXCND,
    EDS.LHEXC,
    EDS.LHEXCND,
    CAST(CASE
             WHEN ISNULL(EAL.logCount, 0) > 0
                  AND
                  (
                      EDS.REG = 1
                      OR EDS.REG < 1
                  ) THEN
                 1
             ELSE
                 0
         END AS BIT) AS IsForChecking,
    EDS.ID_DayType,
    EDS.Absences,
    EDS.LeaveWithPay,
    EDS.FirstHalfLeaveWithPay,
    EDS.SecondHalfLeaveWithPay,
    EDS.OffsetREG,
    EDS.OffsetOT,
    EDS.OffsetND,
    EDS.OffsetNDOT,
    EDS.ComputedREG,
    EDS.ComputedOT,
    EDS.ComputedND,
    EDS.ComputedNDOT,
    EDS.RatedREG,
    EDS.RatedOT,
    EDS.RatedND,
    EDS.RatedNDOT,
    EDS.OffsetRate,
    EDS.ActualREG,
    EDS.ActualOT,
    EDS.ActualND,
    EDS.ActualNDOT,
    EDS.ForPerfectAttendance,
    EDS.StraightDuty,
    EDS.IsHDAbsent,
    dbo.tDayType.Name AS DayType,
    EDS.MealAllowance,
    EDS.IsNoAttendance,
    EDS.ID_CostCenter,
    cc.Name AS CostCenter,
    EDS.IsTentativeAbsent,
    EDS.HasStopEmail,
    EDS.HasSchedule,
    EDS.ActualUT,
    bm.Name AS Branch,
    EDS.Posted,
    EDS.TardyAsLeavePayrollItem,
    EDS.UTAsLeavePayrollItem,
    EDS.TardyAsLeave,
    EDS.UTAsLeave,
    EDS.ID_TempDailySchedule,
    EDS.DateTimeCreated,
    EDS.DateTimeModified,
    EDS.DateTimeProcessed,
    c.Name AS Company,
    dm.Name AS Department,
    dsm.Name AS Designation,
    EDS.ID_TimekeepingFrequency,
    EDS.ID_PayrollClassifi,
    EDS.LHRDREG,
    EDS.LHRDOT,
    EDS.SHREG,
    EDS.SHOT,
    EDS.SHRDREG,
    EDS.SHRDOT,
    EDS.SHRDND,
    EDS.SHRDNDOT,
    EDS.LHRDND,
    EDS.SHND,
    EDS.SHNDOT,
	eds.RetroCause
FROM dbo.tEmployeeDailySchedule_RETRO AS EDS
    LEFT OUTER JOIN dbo.tBranch AS b
        ON b.ID = EDS.ID_Branch
    LEFT OUTER JOIN dbo.tBranchMaintenance AS bm
        ON bm.ID = b.ID_BranchMaintenance
    LEFT OUTER JOIN dbo.tCostCenter AS cc
        ON EDS.ID_CostCenter = cc.ID
    LEFT OUTER JOIN dbo.tDayType
        ON EDS.ID_DayType = dbo.tDayType.ID
    LEFT OUTER JOIN
    (
        SELECT COUNT(ID) AS logCount,
               ID_Employee,
               WorkDate
        FROM dbo.tEmployeeAttendanceLog
        GROUP BY WorkDate,
                 ID_Employee
    ) AS EAL
        ON EAL.WorkDate = EDS.Date
           AND EAL.ID_Employee = EDS.ID_Employee
    LEFT OUTER JOIN dbo.tPersona AS P
        RIGHT OUTER JOIN dbo.tEmployee AS E
            ON P.ID = E.ID_Persona
        ON EDS.ID_Employee = E.ID
    LEFT OUTER JOIN dbo.tDailySchedule AS DS
        ON EDS.ID_DailySchedule = DS.ID
    LEFT OUTER JOIN dbo.tWeekDay AS WS
        ON DATEPART(dw, EDS.Date) = WS.ID
    LEFT OUTER JOIN dbo.tCompany AS c
        ON c.ID = E.ID_Company
    LEFT OUTER JOIN dbo.tDepartment AS dep
        ON dep.ID = EDS.ID_Department
    LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm
        ON dm.ID = dep.ID_DepartmentMaintenance
    LEFT OUTER JOIN dbo.tDesignation AS dg
        ON dg.ID = EDS.ID_Designation
    LEFT OUTER JOIN dbo.tDesignationMaintenance AS dsm
        ON dsm.ID = dg.ID_DesignationMaintenance
ORDER BY Employee,
         EDS.Date;
GO
