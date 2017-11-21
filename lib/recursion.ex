defmodule Recursion do
  def fib(0), do: []
  def fib(x) do
    for n <- 0..x - 1, do: _fib(n)
  end

  defp _fib(0) do 0 end
  defp _fib(1) do 1 end
  defp _fib(n) when n >= 0 do
    _fib(n - 1) + _fib(n - 2)
  end
end
