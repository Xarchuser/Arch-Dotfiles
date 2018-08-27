# Defined in - @ line 0
function logsysmd --description alias\ logsysmd\ journalctl\ -b\ \|\ grep\ -iE\ \'erro\|fail\|warning\'
	journalctl -b | grep -iE 'erro|fail|warning' $argv;
end
