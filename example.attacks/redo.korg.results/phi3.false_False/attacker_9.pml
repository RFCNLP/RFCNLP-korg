/* spin -t9 -s -r -p -g phi3.false_daisy_check.pml */
active proctype attacker() {
	
	NtoA ! SYN;
	NtoB ! SYN;
	AtoN ? SYN_ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! ACK;
	BtoN ? SYN_ACK;
	NtoB ! SYN_ACK;
	// Acceptance Cycle part of attack
}