/****** Object:  View [tSQLt].[TestClasses]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------------------
CREATE VIEW [tSQLt].[TestClasses]
AS
  SELECT s.name AS Name, s.schema_id AS SchemaId
    FROM sys.extended_properties ep
    JOIN sys.schemas s
      ON ep.major_id = s.schema_id
   WHERE ep.name = N'tSQLt.TestClass';
GO
