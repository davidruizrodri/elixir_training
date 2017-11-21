defmodule PatternMatching do
  @moduledoc """
  Info: https://elixirschool.com/en/lessons/basics/pattern-matching/
  """

  def pattern(options) do
    case options do
      %{show: n} -> n
      %{add: n} -> n + 1
    end
  end
end
