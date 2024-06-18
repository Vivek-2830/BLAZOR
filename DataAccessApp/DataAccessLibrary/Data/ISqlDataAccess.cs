
namespace DataAccessLibrary.Data;

public interface ISqlDataAccess
{
    Task<IEnumerable<T>> LoadDataAsync<T, U>(string storedProcedure, U parameters, string connectionStringName = "Default");
    Task SaveDataAsync<T>(string storedProcedure, T parameters, string connectionStringName = "Default");
}