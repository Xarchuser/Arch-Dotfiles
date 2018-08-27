# Defined in - @ line 0
function nmap-scan-vitim --description 'alias nmap-scan-vitim nmap -sS -P0 -sV -O'
	nmap -sS -P0 -sV -O $argv;
end
