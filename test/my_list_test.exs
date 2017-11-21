defmodule MyListTest do
  use ExUnit.Case

  test "len" do
    assert MyList.len([]) == 0
    assert MyList.len([1, 2]) == 2
  end

  test "other_len" do
    assert MyList.other_len([]) == 0
    assert MyList.other_len([1, 2]) == 2
  end

  describe "square" do
    test "squares an empty array" do
      assert MyList.square([]) == []
    end

    test "squares an array" do
      assert MyList.square([2, 3, 4]) == [4, 9, 16]
    end
  end

  test "sum" do
    assert MyList.sum([]) == 0
    assert MyList.sum([1, 5, 20]) == 26
  end

  test "other_sum" do
    assert MyList.other_sum([]) == 0
    assert MyList.other_sum([1, 5, 20]) == 26
  end

  test "add_last" do
    assert MyList.add_last([1, 2, 3], 4) == Enum.to_list(1..4)
  end

  test "map" do
    assert MyList.map([1, 2, 3], &(&1 + 1)) == [2, 3, 4]
  end

  test "filter" do
    assert MyList.filter([1, 2, 3], fn(x) -> x > 2 end) == [3]
  end

  test "reduce" do
    assert MyList.reduce([1, 2, 3, 4], fn(x, acc) -> x * acc end) == 24
  end

  test "filter_and_map" do
    assert MyList.filter_and_map([1, 2, 3], &(&1 >= 2), &(&1 + 1)) == [3, 4]
  end

  test "map_reduce" do
    assert MyList.map_reduce([1, 2, 3, 4], &(&1 + 1), &(&1 * &2)) == 120
  end
end

