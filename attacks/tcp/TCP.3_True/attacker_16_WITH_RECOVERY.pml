/* spin -t16 -s -r -p -g TCP.3_daisy_check.pml */
active proctype attacker() {
	
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoA ! SYN;
	AtoN ? ACK;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoB ! SYN;
	BtoN ? SYN;
	BtoN ? ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoA ! SYN;
	NtoB ! ACK;
	AtoN ? ACK;
	AtoN ? SYN;
	AtoN ? ACK;
	BtoN ? FIN;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoB ! ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
// recovery to N
// N begins here ... 

	do
	:: AtoN ? SYN -> 
		if
		:: NtoB ! SYN;
		fi unless timeout;
	:: BtoN ? SYN -> 
		if
		:: NtoA ! SYN;
		fi unless timeout;
	:: AtoN ? FIN -> 
		if
		:: NtoB ! FIN;
		fi unless timeout;
	:: BtoN ? FIN -> 
		if
		:: NtoA ! FIN;
		fi unless timeout;
	:: AtoN ? ACK -> 
		if
		:: NtoB ! ACK;
		fi unless timeout;
	:: BtoN ? ACK -> 
		if
		:: NtoA ! ACK;
		fi unless timeout;
	:: _nr_pr < 3 -> break;
	od
end:

}