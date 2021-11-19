/* spin -t6 -s -r -p -g phi2.false_daisy_check.pml */
active proctype attacker() {
	
	if
	:: NtoA ! ACK;
	fi unless timeout;
	if
	:: NtoB ! ACK;
	fi unless timeout;
	if
	:: AtoN ? SYN;
	fi unless timeout;
	// Acceptance Cycle part of attack
	do
	::
	   BtoN ? SYN;
	   BtoN ? SYN;
	   AtoN ? SYN;
	od
}