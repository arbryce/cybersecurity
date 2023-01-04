Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4

Enable-NetFirewallRule -DisplayGroup “Remote Desktop”

iex ((New-Object 
System.Net.WebClient).DownloadString('https://git.io/debloat'))

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force