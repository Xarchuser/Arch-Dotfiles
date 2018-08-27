# Defined in - @ line 0
function cpugov --description 'alias cpugov cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor'
	cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor $argv;
end
