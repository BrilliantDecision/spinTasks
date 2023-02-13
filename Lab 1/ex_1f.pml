#ifndef N
#define N	2
#endif


init {
chan dummy = [N] of { byte } do
:: dummy!85
:: dummy!170 od
}
