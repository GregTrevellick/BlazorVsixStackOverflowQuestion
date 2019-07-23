cd "C:\_git\AzureDevOpsBlazorSaddlesWidget2\Src\BlazorSaddlesWidget"

rem publish the app to \bin....\dist\_framework
dotnet clean 
dotnet publish -c Release -o C:\_git\AzureDevOpsBlazorSaddlesWidget2\Src\BlazorSaddlesWidget\bin\Debug\netstandard2.0\publish\

rem copy the bin files published above to the app folder
rem  /S    Copy folders and subfolders
rem  /Y    Suppress prompt to confirm overwriting a file.
rem  /F    Display full source and destination file names while copying.
rem  /R    Overwrite read-only files.
rem xcopy C:\_git\AzureDevOpsBlazorSaddlesWidget2\Src\BlazorSaddlesWidget\bin\Debug\netstandard2.0\publish\BlazorSaddlesWidget\dist\_framework\* C:\_git\AzureDevOpsBlazorSaddlesWidget2\Src\BlazorSaddlesWidget\wwwroot\_framework\ /F /R /Y /S

rem make the new files read-only
rem attrib +R C:\_git\AzureDevOpsBlazorSaddlesWidget2\Src\BlazorSaddlesWidget\wwwroot\_framework\*

cd "C:\_git\AzureDevOpsBlazorSaddlesWidget2\Src\BlazorSaddlesWidget\bin\Debug\netstandard2.0\publish\"

rem generate the vsix itself
tfx extension create --rev-version --manifest-globs vss-extension.json

rem manually upload the vsix into vsmp edit screen (vsmp_pat not used)