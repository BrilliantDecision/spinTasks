	bool flag[2]	// file: ex_3b.pml
	bool turn 3
 active [2] proctype user() 
 {
	flag[_pid] = true
	turn = _pid
	(flag[1-_pid] == false || turn == 1-_pid)
 crit: skip // critical section 11
	flag[_pid] = false 13 
 }
