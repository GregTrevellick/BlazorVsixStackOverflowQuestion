using Microsoft.AspNetCore.Components.Builder;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace BlazorVsixStackOverflowQuestion
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
        }

        public void Configure(IComponentsApplicationBuilder app)
        {
            Console.WriteLine("Welcome to Startup class");
            app.AddComponent<App>("appy");
        }
    }
}
