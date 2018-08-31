defmodule Fibo do
    def fib(s) when is_binary(s) do
        {number, _} = Integer.parse(s)
        fib(number)
    end

    def fib(0) do
        0
    end

    def fib(1) do
        1
    end

    def fib(n) do
        fib(n-1) + fib(n-2)
    end
end