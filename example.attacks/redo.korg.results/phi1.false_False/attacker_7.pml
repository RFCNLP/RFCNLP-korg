/* spin -t7 -s -r -p -g phi1.false_daisy_check.pml */
active proctype attacker() {
	
	NtoA ! ACK;
	NtoB ! SYN;
	BtoN ? SYN_ACK;
	NtoB ! ACK;
	BtoN ? FIN;
	NtoB ! ACK;
	NtoB ! FIN;
	NtoB ! SYN;
	NtoB ! ACK;
	BtoN ? ACK;
	NtoB ! ACK;
	BtoN ? SYN_ACK;
	NtoB ! FIN;
	NtoB ! SYN_ACK;
	BtoN ? FIN;
	BtoN ? ACK;
	BtoN ? SYN;
	// Acceptance Cycle part of attack
}