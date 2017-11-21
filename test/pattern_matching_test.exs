defmodule PatternMatchingTest do
  use ExUnit.Case

  describe "pattern" do
    test "with show option" do
      assert PatternMatching.pattern(%{show: 1}) == 1
    end

    test "with add option" do
      assert PatternMatching.pattern(%{add: 1}) == 2
    end
  end
end
