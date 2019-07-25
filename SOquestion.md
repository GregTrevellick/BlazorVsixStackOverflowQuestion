# Blazor routing fails in Azure DevOps iframe

I have a simple [Blazor](https://dotnet.microsoft.com/apps/aspnet/web-apps/client) website ([source code](https://github.com/GregTrevellick/BlazorVsixStackOverflowQuestion)) which works fine when running locally on my PC. It works fine as a stand alone website and also within an iframe of another website. In both iframe & non-iframe scenarios it works fine when running directly from within Visual Studio (F5) and indepenmdently of Visual Studio after having published the site as a set of static assets.

However when I generate an [Azure Devops widget](https://docs.microsoft.com/en-us/azure/devops/extend/develop/add-dashboard-widget?view=azure-devops) and upload it to the [Visual Studio Marketplace](https://marketplace.visualstudio.com/azuredevops) the site fails to load correctly (note: all Azure Devops widgets run inside an iframe within [Azure Devops](https://azure.microsoft.com/en-gb/services/devops/)).

The error is that Blazor fails to find the default route for the app and hence Blazor's ```<NotFoundContent>``` tag is displayed within the [Azure Devops](https://azure.microsoft.com/en-gb/services/devops/) iframe. The fact that the ```<NotFoundContent>``` tag is displayed indicates that Blazor has started up correctly (as have ```Console.WriteLine``` statements in ```Program.cs``` and ```StartUp.cs```) and all assets (i.e. Blazor & mono javascript files & various DLL files) successfully download to the browser.

I have tried numerous ways to define the Blazor routing as follows, all without success:
 - base href=/
 - base href=/dist
 - route attribute in .cs file
 - dynamic define base at runtime

For what it's worth, the vsix file that is uploaded to Visual Studio Marketplace [can be found here](https://github.com/GregTrevellick/BlazorVsixStackOverflowQuestion).