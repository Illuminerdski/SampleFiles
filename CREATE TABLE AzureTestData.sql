USE [sandbox];

DROP TABLE IF EXISTS [dbo].[AzureTestData];

CREATE TABLE [dbo].[AzureTestData] (
	[RowId]				BIGINT		  IDENTITY(1, 1) NOT NULL
   ,[RowInsertDatetime] DATETIME	  NOT NULL CONSTRAINT [DF_AzureTestData_RowInsertDatetime] DEFAULT (GETDATE())
   ,[RowInsertUser]		NVARCHAR(128) NOT NULL CONSTRAINT [DF_AzureTestData_RowInsertUser] DEFAULT (SUSER_SNAME())
   ,[RowVersion]		TIMESTAMP	  NOT NULL
   ,[RowSource]			VARCHAR(1000) NULL
   ,[Title]				VARCHAR(1000) NULL
   ,[ReleaseDate]		VARCHAR(1000) NULL
   ,[RunTime]			VARCHAR(1000) NULL
   ,[Rating]			VARCHAR(1000) NULL
   ,CONSTRAINT [PK_AzureTestData] PRIMARY KEY CLUSTERED ([RowId] ASC)
);
GO

