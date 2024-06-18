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
