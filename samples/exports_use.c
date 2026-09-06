/* The C side of samples/exports.lucb: built against pixels.h and pixels.a by test.sh. */
#include "pixels.h"
#include <stdio.h>

int main(void) {
    Pixel left = { 200, 100, 50 };
    Pixel right = { 100, 100, 100 };
    Pixel added = blend(left, right, Blend_add);
    Pixel brightest = blend(left, right, Blend_max);
    scale(&brightest, 50);
    printf("%u %u %u\n", added.red, added.green, added.blue);
    printf("%u %u %u\n", brightest.red, brightest.green, brightest.blue);
    printf("%u\n", Pixel_brightness(&added));
    return 0;
}
