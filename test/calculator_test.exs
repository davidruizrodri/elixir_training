defmodule CalculatorTest do
  use ExUnit.Case

  test "sum" do
    assert Calculator.sum(1, 2) == 3
  end

  describe "int_div" do
    test "divides the two elements, returning an integer" do
      assert Calculator.int_div(5, 2) == 2
    end

    test "with guard clause error" do
      assert_raise FunctionClauseError, fn ->
        Calculator.int_div(1.0, 2)
      end
    end
  end

  test "float_div" do
    assert Calculator.float_div(5, 2) == 2.5
  end

  test "sqrt" do
    assert Calculator.sqrt(16) == 4
  end

  test "square" do
    assert Calculator.square(4) == 16
  end

  describe "power" do
    test "elevates to the power of 0" do
      assert Calculator.power(2, 0) == 1
    end

    test "elevates to the power of 1" do
      assert Calculator.power(2, 1) == 2
    end

    test "elevates to the power of n" do
      assert Calculator.power(2, 3) == 8
    end
  end
end
