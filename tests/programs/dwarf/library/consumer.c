#include <stdint.h>
extern int64_t twice(int64_t);
int main(void) { return twice(21) == 42 ? 0 : 1; }
