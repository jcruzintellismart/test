/****** Object:  View [dbo].[vEducationAttainment]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEducationAttainment]
AS
SELECT     TOP (100) PERCENT EA.ID, EL.Name AS EducationLevel, EA.YearFrom, EA.YearTo, EA.Comment, EA.ID_Persona, EA.ID_EducationLevel, 
                      EA.DateTimeCreated, EA.DateTimeModified, EA.DateCreated, EA.DateModified, EA.ID_Transaction_Created, EA.ID_Transaction_Modified, EA.School , 
                      EA.ID_EducationAttainmentStatus, eas.Name AS EducationAttainmentStatus, EA.ID_School, ed.ID AS ID_EducationDegree,ed.Name AS EducationDegree,
                      ea.ID_Courses, cor.Name AS Courses,
                      ea.ID_Month, mo.Name AS MONTH, ea.Year,
                      ea.Course,ea.SchoolAddress, ea.School AS SchoolName
FROM         dbo.tEducationAttainment AS EA LEFT OUTER JOIN
                      dbo.tSchool AS sc ON EA.ID_School = sc.ID LEFT OUTER JOIN
                      dbo.tEducationAttainmentStatus AS eas ON EA.ID_EducationAttainmentStatus = eas.ID LEFT OUTER JOIN
                      dbo.tEducationLevel AS EL ON EA.ID_EducationLevel = EL.ID LEFT OUTER JOIN 
                      dbo.tEducationDegree ed ON ed.ID = ea.ID_EducationDegree LEFT OUTER JOIN
                      dbo.tCourses cor ON ea.ID_Courses = cor.ID LEFT OUTER JOIN
                      dbo.tMonth mo ON ea.ID_Month = mo.ID
ORDER BY EA.ID_EducationLevel DESC
GO
