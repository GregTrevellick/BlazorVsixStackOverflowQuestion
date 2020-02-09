cd "C:\_Cgit\BlazorVsixStackOverflowQuestion\Src\BlazorVsixStackOverflowQuestion"

rem publish the app to \bin....\dist\_framework
dotnet clean 
dotnet publish -c Release -o C:\_Cgit\BlazorVsixStackOverflowQuestion\Src\BlazorVsixStackOverflowQuestion\bin\Debug\netstandard2.1\publish\

cd "C:\_git\BlazorVsixStackOverflowQuestion\Src\BlazorVsixStackOverflowQuestion\bin\Release\netstandard2.1\publish\"

rem generate the vsix itself
tfx extension create --rev-version --manifest-globs vss-extension.json
