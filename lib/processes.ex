defmodule Processes do
  def counter(next_pid) do
    receive do
      n -> send next_pid, n + 1
    end
  end

  def create_processes(n) do
    last = Enum.reduce(
      1..n,
      self(),
      fn (_,send_to) ->
        spawn(Processes, :counter, [send_to])
      end
    )

    send last, 0

    receive do
      final_answer when is_integer(final_answer) ->
        "Result is #{inspect(final_answer)}"
    end
  end

  def run(n) do
    {time, result} = :timer.tc(Processes, :create_processes, [n])
    IO.puts inspect {time/1_000_000, result}
  end
end

# elixir --erl "+P 1000000" -r processes.ex -e "Processes.run(1000000)"
