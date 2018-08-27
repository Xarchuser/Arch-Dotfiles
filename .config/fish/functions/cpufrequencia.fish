# Defined in - @ line 0
function cpufrequencia --description alias\ cpufrequencia\ watch\ grep\ \\\"cpu\ MHz\\\"\ /proc/cpuinfo
	watch grep \"cpu MHz\" /proc/cpuinfo $argv;
end
