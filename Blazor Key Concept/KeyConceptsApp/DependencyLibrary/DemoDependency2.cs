

namespace DependencyLibrary;

public class DemoDependency2 : IDemoDependency
{
    public string GiveRandomNumber()
    {
        return "This is not-working random number value : 5";
    }
}
