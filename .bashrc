# virtualbox commands
function vmListRunningVMs() {
	vboxmanage list runningvms
}

function vmPowerOn(){
	if [ -z "$1" ]; then
		echo "invalid argument.";
	else
		vboxmanage startvm "$1" --type headless
	fi
}

function vmPowerOff() {
	if [ -z "$1" ]; then
		echo "invalid argument.";
	else
		vboxmanage controlvm "$1" poweroff
	fi
}

# alias define
alias vmpoweron=vmPowerOn
alias vmpoweroff=vmPowerOff
alias vmlist=vmListRunningVMs
