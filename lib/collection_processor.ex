defmodule CollectionProcessor do
  @moduledoc """
  Info: https://elixirschool.com/en/lessons/basics/enum/
  """

  def all_atoms?(list) do
    Enum.all?(list, fn(x) -> is_atom(x) end)
  end

  def remove_two_to_values(keyword_list) do
    Enum.map(keyword_list, fn {k, v} -> {k, v - 2} end)
  end
end
