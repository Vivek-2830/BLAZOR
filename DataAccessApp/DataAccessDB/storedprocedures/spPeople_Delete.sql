CREATE PROCEDURE [dbo].[spPeople_Delete]
	@Id int 
AS
begin
	delete
	from dbo.People
	where Id = @Id; 
end
