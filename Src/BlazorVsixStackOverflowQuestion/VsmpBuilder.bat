cd "C:\_git\BlazorVsixStackOverflowQuestion\Src\BlazorVsixStackOverflowQuestion"

rem publish the app to \bin....\dist\_framework
dotnet clean 
dotnet publish -c Release -o C:\_git\BlazorVsixStackOverflowQuestion\Src\BlazorVsixStackOverflowQuestion\bin\Debug\netstandard2.0\publish\

cd "C:\_git\BlazorVsixStackOverflowQuestion\Src\BlazorVsixStackOverflowQuestion\bin\Debug\netstandard2.0\publish\"

rem generate the vsix itself
tfx extension create --rev-version --manifest-globs vss-extension.json
