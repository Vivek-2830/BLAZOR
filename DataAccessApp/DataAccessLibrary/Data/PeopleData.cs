using DataAccessLibrary.Models;

namespace DataAccessLibrary.Data;

public class PeopleData : IPeopleData
{
    private readonly ISqlDataAccess _sql;

    public PeopleData(ISqlDataAccess sql)
    {
        _sql = sql;
    }

    public async Task<IEnumerable<PersonModel>> GetAllPeople()
    {
        var output = await _sql.LoadDataAsync<PersonModel, dynamic>(
            "dbp.People_GetAll",
            new { }
            );

        return output;
    }

    public async Task UpdatePerson(PersonModel person)
    {
        await _sql.SaveDataAsync("dbo.spPeople_Update", person);
    }

    public async Task InsertPerson(PersonModel person)
    {
        await _sql.SaveDataAsync("dbo.spPeople_Insert",
                new { person.FirstName, person.LastName });
    }

    public async Task DeletePerson(int id)
    {
        await _sql.SaveDataAsync("dbo.spPeople_Delete",
            new { Id = id });
    }
}