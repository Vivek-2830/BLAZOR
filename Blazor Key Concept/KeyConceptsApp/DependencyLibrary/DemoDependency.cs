
namespace DependencyLibrary;

public class DemoDependency : IDemoDependency
{
    public string GiveRandomNumber()
    {
        int randomValue = Random.Shared.Next(1, 100);
        return $"The Value is {randomValue}";
    }
}
