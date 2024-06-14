using Microsoft.AspNetCore.Components;

namespace KeyConcepts.Client.Pages
{
    //This is a test from the shortcut version

    public partial class Demo
    {
        [Inject]
        protected IConfiguration Config { get; set; } = default!;
        private string? GetConnectionInfo()
        {
            return Config.GetConnectionString("Default");
        }

        private string GetInfo()
        {
            return "This is Test info";
        }
    }
}                                              