/* spin -t65 -s -r -p -g TCP.3_daisy_check.pml */
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
	NtoA ! SYN;
	AtoN ? ACK;
	NtoB ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoB ! FIN;
	BtoN ? FIN;
	BtoN ? ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoB ! ACK;
	BtoN ? SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoB ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoA ! ACK;
	NtoB ! SYN;
	BtoN ? ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	NtoB ! FIN;
	AtoN ? FIN;
	BtoN ? FIN;
	NtoA ! ACK;
	NtoB ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoB ! SYN;
	AtoN ? SYN;
	BtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoB ! ACK;
	AtoN ? FIN;
	BtoN ? ACK;
	NtoB ! FIN;
	AtoN ? ACK;
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
	NtoA ! FIN;
	AtoN ? ACK;
	BtoN ? SYN;
	NtoA ! ACK;
	NtoB ! SYN;
	BtoN ? ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoB ! ACK;
	AtoN ? SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	AtoN ? SYN;
	BtoN ? FIN;
	NtoA ! ACK;
	NtoA ! SYN;
	AtoN ? ACK;
	NtoB ! ACK;
	NtoB ! FIN;
	NtoB ! SYN;
	AtoN ? FIN;
	BtoN ? ACK;
	NtoA ! ACK;
	BtoN ? SYN;
	NtoA ! FIN;
	NtoA ! SYN;
	AtoN ? ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	BtoN ? ACK;
	NtoB ! ACK;
	NtoB ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	NtoA ! SYN;
	AtoN ? ACK;
	NtoB ! FIN;
	AtoN ? FIN;
	BtoN ? FIN;
	NtoA ! FIN;
	AtoN ? ACK;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoB ! SYN;
	AtoN ? SYN;
	BtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoB ! ACK;
	BtoN ? FIN;
	NtoB ! ACK;
	NtoB ! FIN;
	BtoN ? ACK;
	NtoB ! SYN;
	BtoN ? SYN;
	NtoB ! ACK;
	BtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? SYN;
	BtoN ? FIN;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoB ! ACK;
	NtoB ! FIN;
	AtoN ? SYN;
	NtoB ! SYN;
	BtoN ? ACK;
	AtoN ? ACK;
	NtoA ! ACK;
	BtoN ? SYN;
	NtoA ! FIN;
	AtoN ? FIN;
	NtoA ! SYN;
	AtoN ? ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	AtoN ? ACK;
	NtoA ! FIN;
	AtoN ? FIN;
	AtoN ? ACK;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoB ! ACK;
	BtoN ? FIN;
	NtoB ! ACK;
	NtoB ! FIN;
	NtoB ! SYN;
	AtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	BtoN ? SYN;
	NtoA ! SYN;
	AtoN ? ACK;
	NtoB ! ACK;
	AtoN ? FIN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoB ! FIN;
	AtoN ? ACK;
	BtoN ? ACK;
	BtoN ? FIN;
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
	BtoN ? SYN;
	NtoB ! SYN;
	AtoN ? ACK;
	AtoN ? SYN;
	BtoN ? ACK;
	NtoB ! FIN;
	AtoN ? ACK;
	BtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoA ! SYN;
	AtoN ? ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	BtoN ? FIN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	NtoA ! SYN;
	AtoN ? ACK;
	NtoB ! ACK;
	BtoN ? SYN;
	NtoB ! ACK;
	NtoB ! SYN;
	AtoN ? FIN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	NtoB ! ACK;
	BtoN ? FIN;
	NtoA ! SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoB ! FIN;
	BtoN ? ACK;
	NtoB ! SYN;
	AtoN ? FIN;
	AtoN ? SYN;
	AtoN ? ACK;
	BtoN ? SYN;
	BtoN ? ACK;
	NtoB ! ACK;
	BtoN ? FIN;
	NtoB ! ACK;
	NtoB ! FIN;
	BtoN ? ACK;
	BtoN ? SYN;
	NtoB ! ACK;
	NtoB ! SYN;
	NtoB ! FIN;
	BtoN ? ACK;
	BtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	BtoN ? FIN;
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
	NtoB ! SYN;
	AtoN ? FIN;
	AtoN ? ACK;
	BtoN ? SYN;
	NtoB ! ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	NtoA ! SYN;
	BtoN ? ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	NtoA ! ACK;
	BtoN ? FIN;
	NtoA ! SYN;
	NtoB ! FIN;
	AtoN ? FIN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	NtoA ! ACK;
	BtoN ? ACK;
	NtoA ! FIN;
	NtoB ! ACK;
	AtoN ? FIN;
	NtoA ! SYN;
	BtoN ? SYN;
	NtoB ! SYN;
	AtoN ? ACK;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoB ! ACK;
	NtoB ! FIN;
	AtoN ? FIN;
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
	NtoB ! ACK;
	BtoN ? SYN;
	NtoA ! SYN;
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
	NtoB ! ACK;
	NtoB ! SYN;
	BtoN ? ACK;
	NtoB ! FIN;
	AtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	AtoN ? ACK;
	NtoB ! ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoA ! SYN;
	AtoN ? SYN;
	AtoN ? ACK;
	NtoA ! ACK;
	NtoB ! SYN;
	AtoN ? FIN;
	NtoA ! ACK;
	BtoN ? FIN;
	NtoA ! FIN;
	AtoN ? ACK;
	NtoA ! ACK;
	BtoN ? SYN;
	NtoA ! SYN;
	NtoB ! ACK;
	NtoB ! FIN;
	AtoN ? SYN;
	AtoN ? ACK;
	AtoN ? FIN;
	BtoN ? ACK;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! FIN;
	NtoA ! SYN;
	AtoN ? ACK;
	AtoN ? SYN;
	NtoA ! ACK;
	BtoN ? FIN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	AtoN ? SYN;
	NtoA ! SYN;
	AtoN ? ACK;
	NtoB ! ACK;
	BtoN ? SYN;
	NtoB ! ACK;
	NtoB ! SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! ACK;
	BtoN ? FIN;
	NtoA ! FIN;
	NtoB ! ACK;
	NtoB ! FIN;
	AtoN ? FIN;
	AtoN ? ACK;
	AtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoA ! ACK;
	BtoN ? SYN;
	NtoA ! SYN;
	NtoB ! ACK;
	AtoN ? SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoB ! SYN;
	BtoN ? ACK;
	NtoB ! FIN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! ACK;
	BtoN ? FIN;
	NtoA ! SYN;
	NtoB ! ACK;
	NtoB ! ACK;
	AtoN ? SYN;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	AtoN ? FIN;
	NtoA ! ACK;
	NtoB ! SYN;
	BtoN ? SYN;
	NtoA ! SYN;
	AtoN ? SYN;
	BtoN ? ACK;
	NtoA ! ACK;
	NtoA ! FIN;
	AtoN ? ACK;
	AtoN ? ACK;
	NtoA ! ACK;
	BtoN ? FIN;
	AtoN ? FIN;
	NtoB ! FIN;
	BtoN ? ACK;
	NtoA ! ACK;
	AtoN ? SYN;
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