/* spin -t0 -s -r -p -g phi3.oldKorg.false_daisy_check.pml */
active proctype attacker() {
	
	NtoA ! SYN;
	NtoB ! SYN;
	AtoN ? SYN_ACK;
	BtoN ? SYN_ACK;
	NtoA ! FIN;
	NtoB ! FIN;
	// Acceptance Cycle part of attack
}