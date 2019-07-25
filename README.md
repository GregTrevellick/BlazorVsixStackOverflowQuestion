# BlazorVsixStackOverflowQuestion

## Overview 

A simple repo containing code for a [StackOverflow question](https://stackoverflow.com/questions/55424046/unable-to-set-apk-meta-data-using-google-api-dot-net-client).

The code is an AzureDevOps widget written using Blazor.

All AzureDevOps widgets run inside an iframe within AzureDevOps boards.

## Correct behaviour 

This application runs fine under the following conditions

 - Running locally from Visual Studio (VS2019) using 'F5'
 - Running locally as a static site after having published the project to disc locally using the Visual Studio 'Publish' function
 - Running remotely as a hosted static site after uploading the published site to a host
 - Running as a static site remotely within an iframe of a second static site (this second static site mimics AzureDevOps boards, using a different host name)

## Incorrect behaviour 

 This application fails to runs correctly when uploaded as an extension to the [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=GregTrevellick.BlazorWidget).

 In this scenario all the blazor-related assetts are served up to the browser successfully, and the blazor DLL runs successfully (i.e. ```Programs.cs``` kicks in successfully) but blazor fails to successfully find the default route and hence the ```<NotFoundContent>``` within ```App.razor``` kicks in.

 ## Vsix generation

 To re-create the issue / generate the vsix file that is uploaded to [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=GregTrevellick.BlazorWidget) do the following:

  - Run ```VsmpBuilder.bat``` in the root of the ```BlazorVsixStackOverflowQuestion``` project

 This batch file will

  - Build & publish the project as a set of static asset files for the website
  - Generate a vsix file from the static asset files

 When running yourself you will likely need to 

  - Alter the path names in the batch file 
  - Alter the content of the ```vss-extension.json``` manifest file which drives the generation of the vsix file