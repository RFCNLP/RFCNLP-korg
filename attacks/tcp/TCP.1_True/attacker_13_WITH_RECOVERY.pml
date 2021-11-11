/* spin -t13 -s -r -p -g TCP.1_daisy_check.pml */
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
	NtoB ! ACK;
	AtoN ? SYN;
	NtoB ! SYN;
	BtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	AtoN ? ACK;
	NtoB ! ACK;
	AtoN ? FIN;
	NtoB ! FIN;
	BtoN ? FIN;
	NtoA ! FIN;
	BtoN ? ACK;
	NtoA ! ACK;
	AtoN ? ACK;
	NtoB ! ACK;
	BtoN ? SYN;
	NtoA ! SYN;
	AtoN ? SYN;
	NtoB ! SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	AtoN ? ACK;
	NtoB ! ACK;
	BtoN ? FIN;
	NtoA ! FIN;
	AtoN ? FIN;
	NtoB ! FIN;
	BtoN ? ACK;
	NtoA ! ACK;
	AtoN ? ACK;
	NtoB ! ACK;
	AtoN ? SYN;
	NtoB ! SYN;
	BtoN ? SYN;
	NtoA ! SYN;
	AtoN ? ACK;
	BtoN ? ACK;
	NtoA ! ACK;
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