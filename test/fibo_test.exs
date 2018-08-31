defmodule FiboTest do
    use ExUnit.Case
    test "arg 0" do
        value = Fibo.fib(0)
        assert value == 0
    end

    test "arg 1" do
        assert Fibo.fib(1) == 1
    end

    test "should return fibonnaci series value" do
        assert Fibo.fib(2) == 1
        assert Fibo.fib(3) == 2
    end

    test "runs when argument is a string" do
        assert Fibo.fib("2") == 1
    end
end