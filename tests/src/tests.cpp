#include <iostream>
#include <cassert>

#include <testlib.h>

using namespace testlib;

void test_constructors()
{
    Counter a;
    assert(a.Value() == 0);
    assert(Counter(3).Value() == 3);
    assert(Counter(-3242390).Value() == -3242390);
}

void test_indecrement()
{
    Counter a;
    a.Increment();
    assert(a.Value() == 1);
    a.Decrement();
    assert(a.Value() == 0);
}

int main()
{
    test_constructors();
    test_indecrement();

    std::cout << "All tests passed." << std::endl;

    return 0;
}