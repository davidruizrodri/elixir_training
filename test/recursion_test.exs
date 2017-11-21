defmodule RecursionTest do
  use ExUnit.Case

  test "fibonacci" do
    assert Recursion.fib(0) == []
    assert Recursion.fib(1) == [0]
    assert Recursion.fib(2) == [0, 1]
    assert Recursion.fib(10) == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  end
end
