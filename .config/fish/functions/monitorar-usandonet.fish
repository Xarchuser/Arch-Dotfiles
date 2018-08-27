# Defined in - @ line 0
function monitorar-usandonet --description 'alias monitorar-usandonet lsof -P -i -n | cut -f 1 -d " "| uniq | tail -n +2'
	lsof -P -i -n | cut -f 1 -d " "| uniq | tail -n +2 $argv;
end
