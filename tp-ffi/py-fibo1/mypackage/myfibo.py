
def fibo_naive(n: int):
    assert n >= 0
    return n if n < 2 else fibo_naive(n-1) + fibo_naive(n-2)

# TODO implement fibo_iterative

def fibo_iterative(n :int):
    a,b =0,1
    for i in range(n):
        a,b =b,a+b
    return a
