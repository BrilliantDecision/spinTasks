
byte t0 = 1;
byte t1 = 2;
byte t2 = 3;
byte t3 = 4;
byte t4 = 5;
byte t5 = 6;
byte t6 = 7;
byte t7 = 8;
byte t8 = 9;
byte t9 = 10;

byte ct = t0;
byte n = 0;

active proctype w0() {
    byte t = t0;

    do
    :: (n == t) ->
        break;
    od

    ct = t;
    n++
}

active proctype w1() {
    byte t = t1;
    
    do
    :: (n == t) ->
        break;
    od

    ct = t;
    n++
}

active proctype w2() {
    byte t = t2;
    
    do
    :: (n == t) ->
        break;
    od

    ct = t;
    n++
}

active proctype w3() {
    byte t = t3;
    
    do
    :: (n == t) ->
        break;
    od

    ct = t;
    n++
}

active proctype w4() {
    byte t = t4;
    
    do
    :: (n == t) ->
        break;
    od

    ct = t
    n++
}

active proctype w5() {
    byte t = t5;
    
    do
    :: (n == t) ->
        break;
    od

    ct = t
    n++
}

active proctype w6() {
    byte t = t6;
    
    do
    :: (n == t) ->
        break;
    od

    ct = t
    n++
}

active proctype w7() {
    byte t = t7;
    
    do
    :: (n == t) ->
        break;
    od

    ct = t
    n++
}

active proctype w8() {
    byte t = t8;
    
    do
    :: (n == t) ->
        break;
    od

    ct = t
    n++
}

active proctype w9() {
    byte t = t9;
    
    do
    :: (n == t) ->
        break;
    od

    ct = t
    n++
}

ltl cond0 {[](n < ct)}