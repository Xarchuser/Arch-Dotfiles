# Defined in - @ line 0
function monitorar-ipsinativos --description 'alias monitorar-ipsinativos nmap -T4 -sP 10.0.0.0/28 ; and egrep "00:00:00:00:00:00" /proc/net/arp'
	nmap -T4 -sP 10.0.0.0/28 ; and egrep "00:00:00:00:00:00" /proc/net/arp $argv;
end
