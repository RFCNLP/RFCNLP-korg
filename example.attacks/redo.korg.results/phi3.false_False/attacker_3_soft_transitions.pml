/* spin -t3 -s -r -p -g phi3.false_daisy_check.pml */
active proctype attacker() {
	
	if
	:: NtoA ! SYN;
	fi unless timeout;
	if
	:: NtoB ! SYN;
	fi unless timeout;
	if
	:: AtoN ? SYN_ACK;
	fi unless timeout;
	if
	:: NtoA ! ACK;
	fi unless timeout;
	if
	:: AtoN ? FIN;
	fi unless timeout;
	if
	:: NtoA ! ACK;
	fi unless timeout;
	if
	:: NtoA ! ACK;
	fi unless timeout;
	if
	:: BtoN ? SYN_ACK;
	fi unless timeout;
	if
	:: NtoB ! SYN;
	fi unless timeout;
	// Acceptance Cycle part of attack
}