# BlazorVsixStackOverflowQuestion

A simple repo containing code for a [stackoverflow question](https://stackoverflow.com/questions/55424046/unable-to-set-apk-meta-data-using-google-api-dot-net-client).

The code is an AzureDevOps widget written using Blazor.

All AzureDevOps widgets run inside an iframe within AzureDevOps boards.

This application runs fine under the following conditions
 - Running locally from Visual Studio (VS2019) using 'F5'
 - Running locally as a static site after having published the project to disc locally using the Visual Studio 'Publish' function
 - Running remotely as a hosted static site after uploading the published site to a host
 - Running as a statis site remotely within an iframe of a second static site (this second static site mimics AzureDevOps boards)
