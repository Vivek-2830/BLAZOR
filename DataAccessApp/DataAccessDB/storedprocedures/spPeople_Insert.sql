CREATE PROCEDURE [dbo].[spPeople_Insert]
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
begin
	insert into dbo.People (FirstName, LastName)
	values (@FirstName, @LastName);
end
