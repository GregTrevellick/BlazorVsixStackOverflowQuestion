Blazor website routing not working in Azure DevOps iframe but does elsewhere

I have a simple [Blazor](https://dotnet.microsoft.com/apps/aspnet/web-apps/client) website ([source code](https://github.com/GregTrevellick/BlazorVsixStackOverflowQuestion)) which works fine when running locally on my PC both inside an [iframe](todo) and on its own, both from within Visual Studio and after having published the site as a set of static assets.

However when I generate an [Azure Devops widget](https://docs.microsoft.com/en-us/azure/devops/extend/develop/add-dashboard-widget?view=azure-devops) vsix file and upload it to the [Visual Studio Marketplace](https://marketplace.visualstudio.com/azuredevops) the Blazor routing fails to work. Please note that after uploading to [Visual Studio Marketplace](https://marketplace.visualstudio.com/azuredevops) all widgets run inside an iframe.


