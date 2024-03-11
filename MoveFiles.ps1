$SourcePath = "\\xxx"
$TargetPath = "C:\xxx\xx"
$FileList = Get-Content "C:\xxx\SampleFileList.txt"
$CopiedCounter = 0;
$TotalCounter = 0;

Write-Host "Started copying files to" $TargetPath 
ForEach ($File in $FileList) {  
  if (Test-Path "$SourcePath\$File") {
  	Copy-Item "$SourcePath\$File" $TargetPath
  	Write-Host "  file copied:" $File
	$CopiedCounter++
  } else { 
       Write-Output "  ****Could not find file: $File"
  }
  $TotalCounter++ 
}
Write-Host "Completed copying files to" $TargetPath
Write-Host "Total files processed:" $TotalCounter
Write-Host "Files copied:" $CopiedCounter