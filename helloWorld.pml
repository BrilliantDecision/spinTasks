/* A "Hello World" Promela model for SPIN. */
active proctype Hello() {
    printf("Hello process, my pid is: %d\n", _pid);
}
init {
    int lastpid;
    int lastpid1;
    printf("init process, my pid is: %d\n", _pid);
    lastpid = run Hello();
    lastpid1 = run Hello();
    printf("last pid was: %d\n", lastpid);
    printf("last pid was: %d 1\n", lastpid1);
}