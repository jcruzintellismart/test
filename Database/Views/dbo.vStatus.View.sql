/****** Object:  View [dbo].[vStatus]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vStatus]
AS

SELECT 
s.ID,
s.Code,
s.Name,
s.ImageFile,
s.SeqNo,
s.IsActive,
s.Comment,
s.DateTimeCreated,
s.ID_CreatedBy,
s.ID_ModifiedBy,
s.IsEditable,
s.ID_StatusType,
s.DateTimeModified 
FROM dbo.tStatus AS s
GO
