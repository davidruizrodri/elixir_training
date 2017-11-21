defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def other_len(list), do: _other_len(list, 0)
  defp _other_len([], n), do: n
  defp _other_len([_head | tail], n), do: _other_len(tail, n + 1)

  def len_benchmark(list) do
    {time, _result} = :timer.tc(MyList, :len, [list])
    IO.puts "Method len: #{time/1_000_000}s"
    {time, _result} = :timer.tc(MyList, :other_len, [list])
    IO.puts "Method other_len: #{time/1_000_000}s"
  end
end
