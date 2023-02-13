#define Q (iter == 1)
#define R (iter == 0)
#define A a > 5
#define B b == 5

byte a;
byte b;
byte i;
bool iter = 0;

active proctype p() {
  b = 4;
  a = 4;
  i = 1;
  iter = 1;
  do
  :: i > 5 -> 
    printf("%d", i);
    i = i + 1;
  od
  iter = 0;
  printf("%d", a);
}

ltl condition1 {[]((Q && !R && <>(R)) -> ((A -> B) U R))}
