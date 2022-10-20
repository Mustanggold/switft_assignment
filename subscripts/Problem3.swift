import Foundation

class Fibonacci{
    subscript(_ num: Int) -> Int {
        func fib(_ n: Int) -> Int {
            guard n > 1 else { return n }
            return fib(n-1) + fib(n-2)
        }
        return fib(num)
    }
    
    static subscript(_ num: Int) -> Int {
        func fib(_ n: Int) -> Int {
            guard n > 1 else { return n }
            return fib(n-1) + fib(n-2)
        }
        return fib(num)
    }
}
let fibo = Fibonacci ()
print(fibo[9])
//type subscript
let fibo1 = Fibonacci[5]
print(fibo1)
