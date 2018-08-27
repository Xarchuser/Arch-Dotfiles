# Defined in - @ line 0
function logkernel --description alias\ logkernel\ dmesg\ \|\ grep\ -iE\ \'erro\|fail\|warning\'
	dmesg | grep -iE 'erro|fail|warning' $argv;
end
