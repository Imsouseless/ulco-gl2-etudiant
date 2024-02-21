#include <cassert>

int fiboNaive(int n) {
    assert(n => 0);
    return n < 2 ? n : fiboNaive(n-1) + fiboNaive(n-2);
}

int fiboIterative(int n){
    int a =0;
    int b =1;
    for (int i=0 ;i <10;i++){
        int c = b;
        b = a+b;
        a =c;
    }
    return a;
}


#include <pybind11/pybind11.h>

PYBIND11_MODULE(myfibo, m) {

    m.def("fiboNaive", &fiboNaive ,"Fonction fiboNaive");

    m.def("fiboIterative", &fiboIterative, "Fonction fiboIterative");

    // TODO export fiboIterative (as fibo_iterative)

}

