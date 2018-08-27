# Defined in - @ line 0
function logXorg --description alias\ logXorg\ cat\ /var/log/Xorg.\*\ \|\ grep\ -iE\ \'erro\|fail\|warning\'
	cat /var/log/Xorg.* | grep -iE 'erro|fail|warning' $argv;
end
