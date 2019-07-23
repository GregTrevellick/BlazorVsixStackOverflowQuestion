# BlazorVsixStackOverflowQuestion

## Overview 

A simple repo containing code for a [stackoverflow question](https://stackoverflow.com/questions/55424046/unable-to-set-apk-meta-data-using-google-api-dot-net-client).

The code is an AzureDevOps widget written using Blazor.

All AzureDevOps widgets run inside an iframe within AzureDevOps boards.

## Issue 
This application runs fine under the following conditions
 - Running locally from Visual Studio (VS2019) using 'F5'
 - Running locally as a static site after having published the project to disc locally using the Visual Studio 'Publish' function
 - Running remotely as a hosted static site after uploading the published site to a host
 - Running as a static site remotely within an iframe of a second static site (this second static site mimics AzureDevOps boards, using a different host name)

 This application fails to runs correctly when uploaded as an extension to the [Visual Studio Marketplace].
 In this scenario all the blazor-related assetts are served up to the browser successfully, and the blazor DLL runs successfully (i.e. Programs.cs kicks in successfully) but blazor fails to successfully find the default route and hence the ```<NotFoundContent>``` within ```App.razor``` kicks in.
