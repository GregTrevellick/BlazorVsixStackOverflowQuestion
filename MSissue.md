Blazor routing within an Azure Devops board iframe does not seem to work. Even with a very simple Blazor application, which works in a non-Azure Devops iframe, once published as a Widget the routing fails. The Blazor app itself starts up successfully and all the asetts are served up to the browser successfully but the routing to the default page fails and hence the "<NotFoundContent>" html tag is displayed.


I have previously posted this issue as a StackOverflow question at https://stackoverflow.com/questions/57210058/blazor-routing-fails-in-azure-devops-iframe.


An example widget can be found at https://marketplace.visualstudio.com/items?itemName=GregTrevellick.BlazorWidget.


The vsix file for this widget is located at https://github.com/GregTrevellick/BlazorVsixStackOverflowQuestion/blob/master/Src/BlazorVsixStackOverflowQuestion/bin/Debug/netstandard2.0/publish/GregTrevellick.BlazorWidget-1.0.11.vsix.


The source code for the widget is located at https://github.com/GregTrevellick/BlazorVsixStackOverflowQuestion.
