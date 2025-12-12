USE [sandbox];
GO
DROP TABLE IF EXISTS [dbo].[azure_test_data];

CREATE TABLE [dbo].[azure_test_data] (
	 [row_id]                  BIGINT NOT NULL IDENTITY(1, 1)
	,[row_datetime_begin]      DATETIME2 GENERATED ALWAYS AS ROW START /* HIDDEN */ NOT NULL
	,[row_datetime_end]        DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN NOT NULL
	,[row_user]                NVARCHAR(128) NOT NULL CONSTRAINT [DF_azure_test_data_row_user] DEFAULT (SUSER_SNAME())
	,[row_source]              VARCHAR(1000) NOT NULL
   ,[row_source_line_number]  INT NOT NULL
	,[title]                   VARCHAR(1000) NULL
   ,[release_date]            VARCHAR(1000) NULL
	,[run_time]	               VARCHAR(1000) NULL
	,[rating]                  VARCHAR(1000) NULL
	,PERIOD FOR SYSTEM_TIME([row_datetime_begin], [row_datetime_end])
	,CONSTRAINT [PK_azure_test_data] PRIMARY KEY ([row_id])
);
