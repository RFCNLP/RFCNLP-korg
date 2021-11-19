/* spin -t0 -s -r -p -g phi2.false_daisy_check.pml */
active proctype attacker() {
	
	NtoA ! ACK;
	NtoB ! ACK;
	// Acceptance Cycle part of attack
	do
	::
	   AtoN ? SYN;
	   BtoN ? SYN;
	od
}