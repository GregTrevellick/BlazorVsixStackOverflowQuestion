using Microsoft.AspNetCore.Blazor.Hosting;
using System;

namespace BlazorVsixStackOverflowQuestion
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Welcome to Program class");
            CreateHostBuilder(args)
                .Build()
                .Run();            
        }

        public static IWebAssemblyHostBuilder CreateHostBuilder(string[] args)
            => BlazorWebAssemblyHost
            .CreateDefaultBuilder()
            .UseBlazorStartup<Startup>();
    }
}
