# Defined in - @ line 0
function monitorar-hostsativos --description 'alias monitorar-hostsativos nmap -sP 10.0.0.0/28; arp -e -n | grep "10.0.0.[0-9]* *ether"'
	nmap -sP 10.0.0.0/28; arp -e -n | grep "10.0.0.[0-9]* *ether" $argv;
end
