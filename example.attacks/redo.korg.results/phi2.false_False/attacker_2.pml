/* spin -t2 -s -r -p -g phi2.false_daisy_check.pml */
active proctype attacker() {
	
	NtoA ! ACK;
	NtoB ! ACK;
	AtoN ? SYN;
	BtoN ? SYN;
	// Acceptance Cycle part of attack
}