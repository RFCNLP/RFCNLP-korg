/* spin -t6 -s -r -p -g phi2.oldKorg.false_daisy_check.pml */
active proctype attacker() {
	
	NtoA ! ACK;
	NtoB ! ACK;
	// Acceptance Cycle part of attack
	do
	::
	   BtoN ? SYN;
	   AtoN ? SYN;
	od
}