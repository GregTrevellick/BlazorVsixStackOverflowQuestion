using Microsoft.AspNetCore.Blazor.Hosting;
using System;
using System.Threading.Tasks;

namespace BlazorVsixStackOverflowQuestion
{
    public class Program
    {
        //public static void Main(string[] args)
        //{
        //    Console.WriteLine("Welcome to Program class");
        //    CreateHostBuilder(args)
        //        .Build()
        //        .Run();            
        //}

        //public static IWebAssemblyHostBuilder CreateHostBuilder(string[] args)
        //    => BlazorWebAssemblyHost
        //    .CreateDefaultBuilder()
        //    .UseBlazorStartup<Startup>();

        public static async Task Main(string[] args)
        {
            var builder = WebAssemblyHostBuilder.CreateDefault(args);

            builder.RootComponents.Add<App>("appy");

            await builder.Build().RunAsync();
        }
    }
}
