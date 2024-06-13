using DependencyLibrary;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;

var builder = WebAssemblyHostBuilder.CreateDefault(args);

builder.Services.AddSingleton<IDemoDependency, DemoDependency2>();

await builder.Build().RunAsync();
