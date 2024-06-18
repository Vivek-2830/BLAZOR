﻿/*
Deployment script for DataAccessDB

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DataAccessDB"
:setvar DefaultFilePrefix "DataAccessDB"
:setvar DefaultDataPath "C:\Users\admin\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\mssqllocaldb\"
:setvar DefaultLogPath "C:\Users\admin\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\mssqllocaldb\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Rename refactoring operation with key 7a39af82-7135-460d-93c3-e59b44abd30f is skipped, element [dbo].[Peopel].[FistName] (SqlSimpleColumn) will not be renamed to FirstName';


GO
PRINT N'Creating Procedure [dbo].[spPeople_Delete]...';


GO
CREATE PROCEDURE [dbo].[spPeople_Delete]
	@Id int 
AS
begin
	delete
	from dbo.People
	where Id = @Id; 
end
GO
PRINT N'Creating Procedure [dbo].[spPeople_Update]...';


GO
CREATE PROCEDURE [dbo].[spPeople_Update]
	@Id int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
begin
	update dbo.People
	set FirstName = @FirstName,
		LastName = @LastName
	where Id = @Id;
end
GO
-- Refactoring step to update target server with deployed transaction logs

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '7a39af82-7135-460d-93c3-e59b44abd30f')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('7a39af82-7135-460d-93c3-e59b44abd30f')

GO

GO
PRINT N'Update complete.';


GO
