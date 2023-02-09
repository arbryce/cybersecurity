$Begin = Get-Date -Date '12/21/2022 00:00:00'
$End = Get-Date -Date '12/22/2022 23:59:59'
Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End