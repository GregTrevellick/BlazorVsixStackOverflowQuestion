# Blazor routing fails in Azure DevOps iframe

I have a simple [Blazor](https://dotnet.microsoft.com/apps/aspnet/web-apps/client) website ([source code](https://github.com/GregTrevellick/BlazorVsixStackOverflowQuestion)) which has a routing issue when running in an iframe on [Azure Devops](https://azure.microsoft.com/en-gb/services/devops/) but not elsewhere.

The application works fine when running under the following conditions

 - locally on my PC using Visual Studio (VS2019) using 'F5'
 - locally as a static site after having published the project to disc using the Visual Studio 'Publish' function
 - locally as a static site within an iframe of another unrelated site
 - remotely as a hosted static site after uploading the published site to a host
 - remotely as a static site within an iframe of another unrelated site (this second static site mimics AzureDevOps boards, using a different host name)
 




However when I generate an [Azure Devops widget](https://docs.microsoft.com/en-us/azure/devops/extend/develop/add-dashboard-widget?view=azure-devops) and upload it to the [Visual Studio Marketplace](https://marketplace.visualstudio.com/azuredevops) the site fails to load correctly (note: all Azure Devops widgets run inside an iframe within [Azure Devops](https://azure.microsoft.com/en-gb/services/devops/)).

 This application fails to runs correctly when uploaded as an extension to the [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=GregTrevellick.BlazorWidget).

 In this scenario all the blazor-related assetts are served up to the browser successfully, and the blazor DLL runs successfully (i.e. ```Programs.cs``` kicks in successfully) but blazor fails to successfully find the default route and hence the ```<NotFoundContent>``` within ```App.razor``` kicks in.

The error is that Blazor fails to find the default route for the app and hence Blazor's ```<NotFoundContent>``` tag is displayed within the [Azure Devops](https://azure.microsoft.com/en-gb/services/devops/) iframe. The fact that the ```<NotFoundContent>``` tag is displayed indicates that Blazor has started up correctly (as have ```Console.WriteLine``` statements in ```Program.cs``` and ```StartUp.cs```) and all assets (i.e. Blazor & mono javascript files & various DLL files) successfully download to the browser.



I have tried numerous ways to define the Blazor routing as follows, all without success:
 - base href=/
 - base href=/dist
 - route attribute in .cs file
 - dynamic define base at runtime

For what it's worth, the vsix file that is uploaded to Visual Studio Marketplace [can be found here](https://github.com/GregTrevellick/BlazorVsixStackOverflowQuestion).










