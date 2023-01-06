$file= "C:\Users\cyber\OneDrive\Desktop\network_report.txt"
ipconfig /all | Out-File -FilePath $file
Select-String -Path $file -Pattern IPv4
Remove-Item -Path $file
