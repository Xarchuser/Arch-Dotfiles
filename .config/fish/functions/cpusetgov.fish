# Defined in /tmp/fish.d3BdwI/cpusetgov.fish @ line 2
function cpusetgov --description 'alias cpusetgov cpupower frequency-set -g performance'
	sudo cpupower frequency-set -g performance $argv;
end
