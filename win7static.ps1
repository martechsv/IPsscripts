$wmi = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'true'"

$wmi.EnableStatic(“172.16.97.69”, “255.255.0.0”)

$wmi.SetGateways(“172.16.97.1”, 1)

$wmi.SetDNSServerSearchOrder(“10.255.0.21”)