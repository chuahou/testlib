#include "testlib.h"

namespace testlib
{
    Counter::Counter()
    {
        n = 0;
    }

    Counter::Counter(int a)
    {
        n = a;
    }

    void Counter::Increment()
    {
        n++;
    }

    void Counter::Decrement()
    {
        n--;
    }

    int Counter::Value()
    {
        return n;
    }
}