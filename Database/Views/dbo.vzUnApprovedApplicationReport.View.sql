/****** Object:  View [dbo].[vzUnApprovedApplicationReport]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzUnApprovedApplicationReport]
AS
SELECT 'Missed Log' AS RequestFiled,
e.Code ID_Empl,
eml.ID_Employee,
p.Name EmployeName,
(CASE WHEN eml.ID_FilingStatus = 1 THEN 'Filed' ELSE 'Disapproved' END) ID_FilingStatus,
ss.Name AS ApproverName,
(CASE WHEN sm.Code IS NULL THEN '-' ELSE sm.Code END) Code,
sm.Name StoreName,
cc.Name CostCenterName,
c.Name AS Company,
eml.DateCreated AS DateCreate,
(CASE WHEN (LEFT(eml.DateApproved,12)) IS NULL THEN '-' ELSE LEFT(eml.DateApproved,12) END) AS DateApproved,
(CASE WHEN eml.ApprovalHistory  IS NULL THEN '-' ELSE REPLACE(REPLACE(REPLACE(REPLACE(eml.ApprovalHistory,'&nbsp',''),';',''),'<br>',''),'1:','') END) ApprovalHistory ,
(CASE WHEN tard.FCutoffStartDay IS NULL	THEN '-' ELSE tard.FCutoffStartDay END) FCutoffStartDay,
(CASE WHEN tard.SCutoffStartDay IS NULL	THEN '-' ELSE tard.SCutoffStartDay END) SCutoffStartDay
,eml.WorkDate AS WorkDate
FROM dbo.tEmployee e
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN  dbo.tCompany c ON c.ID = e.ID_Company
LEFT OUTER JOIN dbo.vEmployeeMissedLog eml ON eml.ID_Employee = e.ID
LEFT OUTER JOIN  dbo.tStore s  ON s.ID = e.ID_Store
LEFT OUTER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance 
LEFT OUTER JOIN dbo.tApprovalHistory ah ON ah.ID_Header = eml.ID 
LEFT OUTER JOIN  dbo.tUser ss  ON ss.ID = ah.ID_User
LEFT OUTER JOIN  dbo.tCostCenter cc ON cc.ID = e.ID_CostCenter
LEFT OUTER JOIN dbo.tTKAppRestriction tar ON tar.ID_FilingType = (SELECT tar.ID_FilingType FROM dbo.tFilingType WHERE ID = 2)
LEFT OUTER JOIN  dbo.tTKAppRestriction_Detail tard ON tard.ID = tar.ID 
WHERE eml.ID_FilingStatus IN (1,3) AND eml.ID_Employee IS NOT NULL
--WHERE ID_FilingStatus IN (3)
UNION
SELECT  
'Leave/OffSet'AS RequestFiled ,
e.Code ID_Empl,
l.ID_Employee,
p.Name EmployeName,
(CASE WHEN l.ID_FilingStatus = 1 THEN 'Filed' ELSE 'Disapproved' END) ID_FilingStatus,
ss.Name AS ApproverName,
(CASE WHEN sm.Code IS NULL THEN '-' ELSE sm.Code END) Code,
sm.Name StoreName, cc.Name CostCenterName,c.Name AS Company, l.DateCreated AS DateCreate,
(CASE WHEN (LEFT(l.DateApproved,12)) IS NULL THEN '-' ELSE LEFT(l.DateApproved,12) END) AS DateApproved,
(CASE WHEN l.ApprovalHistory  IS NULL THEN '-' ELSE REPLACE(REPLACE(REPLACE(REPLACE(l.ApprovalHistory,'&nbsp',''),';',''),'<br>',''),'1:','') END) ApprovalHistory ,
(CASE WHEN tard.FCutoffStartDay IS NULL	 THEN	'-' ELSE tard.FCutoffStartDay END) FCutoffStartDay,
(CASE WHEN tard.SCutoffStartDay IS NULL	THEN '-' ELSE tard.SCutoffStartDay END) SCutoffStartDay
,ld.Date AS WorkDate
FROM dbo.tEmployee e
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN  dbo.tCompany c ON c.ID = e.ID_Company
LEFT OUTER JOIN dbo.vLeave l ON l.ID_Employee = e.ID
LEFT OUTER JOIN  dbo.tLeave_Detail AS ld ON	 ld.ID_Leave = l.ID
LEFT OUTER JOIN dbo.tApprovalHistory ah ON ah.ID_Header = l.ID 
LEFT OUTER JOIN  dbo.tUser ss  ON ss.ID = ah.ID_User
LEFT OUTER JOIN  dbo.tStore s  ON s.ID = e.ID_Store
LEFT OUTER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance 
LEFT OUTER JOIN  dbo.tCostCenter cc ON cc.ID = e.ID_CostCenter
LEFT OUTER JOIN dbo.tTKAppRestriction tar ON tar.ID_FilingType = (SELECT tar.ID_FilingType FROM dbo.tFilingType WHERE ID = 3)
LEFT OUTER JOIN  dbo.tTKAppRestriction_Detail tard ON tard.ID = tar.ID 
WHERE l.ID_FilingStatus IN (1,3) AND l.ID_Employee IS NOT NULL
--WHERE ID_FilingStatus IN (3)
UNION 
SELECT 'Overtime'AS RequestFiled, e.Code ID_Empl, o.ID_Employee, p.Name EmployeName, 

(CASE WHEN o.ID_FilingStatus = 1 THEN 'Filed' ELSE 'Disapproved' END) ID_FilingStatus,
		ss.Name AS ApproverName,
		(CASE WHEN sm.Code IS NULL THEN '-' ELSE sm.Code END) Code,
		sm.Name StoreName, cc.Name CostCenterName,c.Name AS Company, o.DateCreated AS DateCreate,
		(CASE WHEN (LEFT(o.DateApproved,12)) IS NULL THEN '-' ELSE LEFT(o.DateApproved,12) END) AS DateApproved,
		(CASE WHEN o.ApprovalHistory  IS NULL THEN '-' ELSE REPLACE(REPLACE(REPLACE(REPLACE(o.ApprovalHistory,'&nbsp',''),';',''),'<br>',''),'1:','') END) ApprovalHistory ,
		(CASE WHEN tard.FCutoffStartDay IS NULL	 THEN	'-' ELSE tard.FCutoffStartDay END) FCutoffStartDay
		,(CASE WHEN tard.SCutoffStartDay IS NULL	THEN '-' ELSE tard.SCutoffStartDay END) SCutoffStartDay,
		o.WorkDate AS WorkDate
FROM dbo.tEmployee e
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN  dbo.tCompany c ON c.ID = e.ID_Company
LEFT OUTER JOIN dbo.vOvertime o ON o.ID_Employee = e.ID
LEFT OUTER JOIN dbo.tApprovalHistory ah ON ah.ID_Header = o.ID 
LEFT OUTER JOIN  dbo.tUser ss  ON ss.ID = ah.ID_User
LEFT OUTER JOIN  dbo.tStore s  ON s.ID = e.ID_Store
LEFT OUTER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance 
LEFT OUTER JOIN  dbo.tCostCenter cc ON cc.ID = e.ID_CostCenter
LEFT OUTER JOIN dbo.tTKAppRestriction tar ON tar.ID_FilingType = (SELECT tar.ID_FilingType FROM dbo.tFilingType WHERE ID = 4)
LEFT OUTER JOIN  dbo.tTKAppRestriction_Detail tard ON tard.ID = tar.ID 
WHERE ID_FilingStatus IN (1,3) AND o.ID_Employee IS NOT NULL 
----- ID_FilingStatus IN (3)
UNION 
SELECT 'Official Business'AS RequestFiled, e.Code ID_Empl, o.ID_Employee, p.Name EmployeName, 

(CASE WHEN o.ID_FilingStatus = 1 THEN 'Filed' ELSE 'Disapproved' END) ID_FilingStatus,
		ss.Name AS ApproverName,
		(CASE WHEN sm.Code IS NULL THEN '-' ELSE sm.Code END) Code,
		sm.Name StoreName, cc.Name CostCenterName,c.Name AS Company, o.DateCreated  AS DateCreate,
		(CASE WHEN (LEFT(o.DateApproved,12)) IS NULL THEN '-' ELSE LEFT(o.DateApproved,12) END) AS DateApproved,
		(CASE WHEN o.ApprovalHistory  IS NULL THEN '-' ELSE REPLACE(REPLACE(REPLACE(REPLACE(o.ApprovalHistory,'&nbsp',''),';',''),'<br>',''),'1:','') END) ApprovalHistory ,
		(CASE WHEN tard.FCutoffStartDay IS NULL	 THEN	'-' ELSE tard.FCutoffStartDay END) FCutoffStartDay
		,(CASE WHEN tard.SCutoffStartDay IS NULL	THEN'-' ELSE tard.SCutoffStartDay END) SCutoffStartDay,
		od.Date AS WorkDate
FROM dbo.tEmployee e
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN  dbo.tCompany c ON c.ID = e.ID_Company
LEFT OUTER JOIN dbo.vOB o ON o.ID_Employee = e.ID
LEFT OUTER JOIN  dbo.tOB_Detail AS od ON od.ID_OB = o.ID
LEFT OUTER JOIN dbo.tApprovalHistory ah ON ah.ID_Header = o.ID 
LEFT OUTER JOIN  dbo.tUser ss  ON ss.ID = ah.ID_User
LEFT OUTER JOIN  dbo.tStore s  ON s.ID = e.ID_Store
LEFT OUTER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance 
LEFT OUTER JOIN  dbo.tCostCenter cc ON cc.ID = e.ID_CostCenter
LEFT OUTER JOIN dbo.tTKAppRestriction tar ON tar.ID_FilingType = (SELECT tar.ID_FilingType FROM dbo.tFilingType WHERE ID = 1)
LEFT OUTER JOIN  dbo.tTKAppRestriction_Detail tard ON tard.ID = tar.ID 
WHERE o.ID_FilingStatus IN (1,3) AND o.ID_Employee IS NOT NULL  

--WHERE ID_FilingStatus IN (3)
UNION
SELECT 'Change of Sched'AS RequestFiled , e.Code ID_Empl, ecos.ID_Employee, p.Name EmployeName, 
(CASE WHEN ecos.ID_FilingStatus = 1 THEN 'Filed' ELSE 'Disapproved' END) ID_FilingStatus,
		ss.Name AS ApproverName,
		(CASE WHEN sm.Code IS NULL THEN '-' ELSE sm.Code END) Code,
		sm.Name StoreName, cc.Name CostCenterName,c.Name AS Company, ecos.DateCreated AS DateCreate,
		(CASE WHEN (LEFT(ecos.DateApproved,12)) IS NULL THEN '-' ELSE LEFT(ecos.DateApproved,12) END) AS DateApproved,
		(CASE WHEN ecos.ApprovalHistory  IS NULL THEN '-' ELSE REPLACE(REPLACE(REPLACE(REPLACE(ecos.ApprovalHistory,'&nbsp',''),';',''),'<br>',''),'1:','') END) ApprovalHistory ,
		(CASE WHEN tard.FCutoffStartDay IS NULL	 THEN	'-' ELSE tard.FCutoffStartDay END) FCutoffStartDay
		,(CASE WHEN tard.SCutoffStartDay IS NULL	THEN '-' ELSE tard.SCutoffStartDay END) SCutoffStartDay,
		ecosd.SchedDate AS WorkDate
FROM dbo.tEmployee e
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN  dbo.tCompany c ON c.ID = e.ID_Company
LEFT OUTER JOIN dbo.vEmployeeChangeOfSchedule ecos ON ecos.ID_Employee = e.ID
LEFT OUTER JOIN  dbo.tEmployeeChangeOfSchedule_Detail AS ecosd ON ecosd.ID_EmployeeChangeOfSchedule = ecos.ID
LEFT OUTER JOIN dbo.tApprovalHistory ah ON ah.ID_Header = ecos.ID
LEFT OUTER JOIN  dbo.tUser ss  ON ss.ID = ah.ID_User 
LEFT OUTER JOIN  dbo.tStore s  ON s.ID = e.ID_Store
LEFT OUTER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance 
LEFT OUTER JOIN  dbo.tCostCenter cc ON cc.ID = e.ID_CostCenter
LEFT OUTER JOIN dbo.tTKAppRestriction tar ON tar.ID_FilingType = (SELECT tar.ID_FilingType FROM dbo.tFilingType WHERE ID = 5)
LEFT OUTER JOIN  dbo.tTKAppRestriction_Detail tard ON tard.ID = tar.ID 
WHERE ecos.ID_FilingStatus IN (1,3)
GO
