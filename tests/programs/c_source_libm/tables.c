/* A package's own C source that calls the C library's maths, as luce-audio's fmopl.c does
   when it builds its tables: nothing else in the program needs libm, so the link must name
   it after this object for --as-needed (Linux) to keep it. */
#include <math.h>

double tables_wave(int step) {
    return floor(pow(2.0, (double)step / 12.0) * 1000.0) + sin(0.0) + log(1.0);
}
