###Get-ChildItem files\samplefiles2 | ForEach-Object {
$filePath = "files\samplefiles2"
$counter = 0;
Write-Host "Started renaming files in" $filePath 
ForEach ($file in Get-ChildItem $filePath) {  
    $NewName = ($file.Name.Split('.', 3))[2]
    Rename-Item $file.FullName $NewName
    $counter++
    Write-Host "Renamed" $file.FullName "to" $NewName
}
Write-Host "Completed renaming files in" $filePath  
Write-Host "Files renamed:" $counter