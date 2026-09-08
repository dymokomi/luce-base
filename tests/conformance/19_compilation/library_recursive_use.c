#include <stdio.h>
#include "conformance.h"

int main(void) {
    Node third = { NULL, 3 };
    Node second = { &third, 2 };
    Node first = { &second, 1 };
    Tree tree = { NULL, 10 };
    Branch branch = { &tree, 5 };
    tree.left = &branch;
    printf("%lld %lld\n", (long long)node_sum(&first), (long long)branch_weight(&tree));
    return 0;
}
