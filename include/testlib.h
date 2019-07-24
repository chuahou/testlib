#ifndef __TESTLIB_H_INCLUDED__
#define __TESTLIB_H_INCLUDED__

namespace testlib
{

    class Counter
    {
        // internal counter
        int n;

    public:
        // initializes with counter set to 0
        Counter();
        // initializes with specified counter value
        Counter(int);
        // default destructor
        ~Counter() {}

        // increments counter
        void Increment();
        
        // decrements counter
        void Decrement();

        // gets value
        int Value();
    };

}

#endif // __TESTLIB_H_INCLUDED__ 