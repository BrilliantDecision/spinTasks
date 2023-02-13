//s  1 Boolean array b(0;1) integer k, i, j,
//comment process i, with i either 0 or 1 and j = 1-i;
bool b[2]

active [2] proctype p()
{ pid k, i  = _pid, j=1 - _pid

C0:	b[i] = false
C1:	if 
	:: k != i 
C2:		if 
		:: !b[j] -> goto C2
		:: else -> k = i; goto C1
		fi
    :: else 
CS:	   skip
 	fi
	b[i] = true
 	skip
 	goto C0
}