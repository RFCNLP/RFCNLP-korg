/* spin -t7 -s -r -p -g phi2.oldKorg.false_daisy_check.pml */
active proctype attacker() {
	
	NtoA ! ACK;
	NtoB ! ACK;
	BtoN ? SYN;
	// Acceptance Cycle part of attack
	do
	::
	   AtoN ? SYN;
	   BtoN ? SYN;
	od
}