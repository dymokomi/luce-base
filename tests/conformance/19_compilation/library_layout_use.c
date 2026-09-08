#include <stddef.h>
#include <stdio.h>
#include "conformance.h"

int main(void) {
    Record record = { 1, 40, 2 };
    int same_size = sizeof(Record) == record_size();
    int same_offset = offsetof(Record, value) == record_value_offset();
    printf("%d %d %zu %zu %llu\n", same_size, same_offset, sizeof(Record), offsetof(Record, value), (unsigned long long)record_value(&record));
    return 0;
}
