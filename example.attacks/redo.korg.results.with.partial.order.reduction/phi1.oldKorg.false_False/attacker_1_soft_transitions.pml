/* spin -t1 -s -r -p -g phi1.oldKorg.false_daisy_check.pml */
active proctype attacker() {
	
	if
	:: NtoA ! ACK;
	fi unless timeout;
	if
	:: NtoB ! SYN;
	fi unless timeout;
	if
	:: BtoN ? SYN_ACK;
	fi unless timeout;
	if
	:: NtoB ! ACK;
	fi unless timeout;
	// Acceptance Cycle part of attack
}