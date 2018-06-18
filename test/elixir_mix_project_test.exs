defmodule ElixirMixProjectTest do
  use ExUnit.Case
  doctest ElixirMixProject

  test "greets the world" do
    assert ElixirMixProject.hello() == :world
  end

  test "calculates power: 2^0" do
    assert ElixirMixProject.power(2,0) == 1
  end

  test "calculates power: 2^3" do
    assert ElixirMixProject.power(2,3) == 8
  end

  test "calculates power: 2^10" do
    assert ElixirMixProject.power(2, 10) == 1024
  end

  test "calculates sin of 0" do
    assert ElixirMixProject.sin(0) == 0.0
  end

  test "calculates cos of 0" do
    assert ElixirMixProject.cos(0) == 1.0
  end

  test "Infix (5 + 4 + 5) * (4 + 5)" do
    assert ElixirMixProject.onpCalc([5, 4, "+", 5, "+", 4, 5, "+", "*"],[]) == 126
  end

  test "Infix 3 * (3 + 3) + 6 - 9 / (3 + 2)" do
    assert ElixirMixProject.onpCalc([3, 3, 3, "+", "*", 6, 9, 3, 2, "+", "/", "-", "+"],[]) == 22.2
  end

  test "Infix 1 + 2 * 3 - 4 / 5 + 6" do
    assert ElixirMixProject.onpCalc([1, 2, 3, "*", "+", 4, 5, "/", "-", 6, "+"],[]) == 12.2
  end

  test "Infix 1 + 2 + 3 + 4 + 5 + 6 * 7" do
    assert ElixirMixProject.onpCalc([1, 2, "+", 3, "+", 4, "+", 5, "+", 6, 7, "*", "+"],[]) == 57
  end
end
