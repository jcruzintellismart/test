/****** Object:  View [dbo].[vTimekeepingFrequency]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ALTER TABLE dbo.tTimekeepingFrequency
--ADD ID_Parameter INT NULL
--GO 

CREATE VIEW [dbo].[vTimekeepingFrequency]
AS
SELECT tf.ID,
       tf.Name,
       tf.IsActive,
       tf.Comment,
       tf.ID_Transaction_Created,
       tf.ID_Transaction_Modified,
       tf.DateTimeCreated,
       tf.DateTimeModified,
       tf.DateCreated,
       tf.DateModified,
       tf.SeqNo,
       tf.Code,
	   tf.HoursPerDay_Min,
	   tf.DaysPerWeek_Min,
	   tf.HoursPerWeek_Min,
	   tf.HoursPerDay_Max,
	   tf.DaysPerWeek_Max,
	   tf.HoursPerWeek_Max,
	   tf.MaxHours,
	   tf.ID_Parameter,
	   p.Name Parameter
FROM dbo.tTimekeepingFrequency tf
LEFT JOIN dbo.tParameter AS p ON p.ID = tf.ID_Parameter
WHERE tf.IsActive = 1
GO
