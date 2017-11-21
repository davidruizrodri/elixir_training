defmodule Calculator do
  def sum(x, y), do: x + y

  def sqrt(x) when x >= 0, do: :math.sqrt(x)
end
