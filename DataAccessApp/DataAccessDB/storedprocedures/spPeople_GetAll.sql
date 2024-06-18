CREATE PROCEDURE [dbo].[spPeople_GetAll]
AS
begin
	select Id, FirstName, LastName
	from dbo.People;
end
