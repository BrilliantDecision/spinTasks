// mtype = {start, end}

// int state = start;
// byte n = 0;
// byte t = 2;

// proctype p() {
//     byte p_t = t + _pid;
//     do
//     :: (n == p_t - 2 && state == end) ->
//         break;
//     od
//     t = p_t;
//     printf("Hello World from thread = %d\n", _pid);
//     n++;
// }

// init {
//     byte i = 0;
//     for(i: 0 .. 9) {
//         run p();
//     }
//     state = end;
// }

///
byte p_num = 10;
byte p_created_num = 0;
byte adder = 2;
byte n = 0;
byte t = adder;

active [p_num] proctype p() {
    p_created_num++;
    do
    :: (n == _pid) -> break;
    od
    t = _pid + adder;
    do
    :: (n == t - adder && p_created_num == p_num) ->
        break;
    od
    printf("Hello World from thread = %d\n", t - adder);
    n++;
}

ltl cond {[](n < t)}