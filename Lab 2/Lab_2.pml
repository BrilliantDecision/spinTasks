#define A (state == working)
#define B (state == finished)
#define C (a > 2)

mtype = {working, finished}

int state = working;
byte a = 1;

active proctype p() {
    state = working;

    byte i = 0;
    for (i: 0 .. 10) {
        a = 4;
    }

    state = finished;

}

ltl condition0 {[]((A && !B && <>B) -> (C U B))}