/* spin -t30 -s -r -p -g TCP.3_daisy_check.pml */
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
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoA ! SYN;
	NtoB ! FIN;
	AtoN ? ACK;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoB ! SYN;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	BtoN ? ACK;
	BtoN ? SYN;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoA ! SYN;
	AtoN ? ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	BtoN ? ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoB ! ACK;
	NtoB ! ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoA ! SYN;
	NtoB ! FIN;
	AtoN ? ACK;
	AtoN ? SYN;
	AtoN ? ACK;
	BtoN ? FIN;
	BtoN ? ACK;
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
	NtoB ! SYN;
	BtoN ? SYN;
	NtoB ! ACK;
	BtoN ? ACK;
	BtoN ? FIN;
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
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoB ! FIN;
	AtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	AtoN ? ACK;
	NtoB ! SYN;
	AtoN ? FIN;
	BtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoB ! ACK;
	AtoN ? FIN;
	NtoB ! ACK;
	NtoA ! SYN;
	AtoN ? ACK;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoB ! FIN;
	BtoN ? FIN;
	NtoA ! SYN;
	AtoN ? SYN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoB ! SYN;
	BtoN ? ACK;
	BtoN ? SYN;
	NtoA ! ACK;
	AtoN ? SYN;
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