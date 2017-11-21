defmodule CollectionProcessorTest do
  use ExUnit.Case

  describe "all_atoms?" do
    test "returns true if all items are atoms" do
      assert CollectionProcessor.all_atoms?([:foo, :bar, :lol]) == true
    end

    test "returns false if not all items are atoms" do
      assert CollectionProcessor.all_atoms?([:foo, "1", :bar]) == false
    end
  end

  test "remove_two_to_keyword_values" do
    assert CollectionProcessor.remove_two_to_values([foo: 3, bar: 5]) == [foo: 1, bar: 3]
  end

  test "filter_odds_adding_three" do
    assert CollectionProcessor.filter_odds_adding_three([1, 2, 5, 23, 111]) ==
      [4, 8, 26, 114]
  end
end
