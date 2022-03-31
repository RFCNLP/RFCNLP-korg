/* spin -t9 -s -r -p -g phi2.oldKorg.false_daisy_check.pml */
active proctype attacker() {
	
	if
	:: NtoA ! ACK;
	fi unless timeout;
	if
	:: NtoB ! ACK;
	fi unless timeout;
	if
	:: BtoN ? SYN;
	fi unless timeout;
	// Acceptance Cycle part of attack
}