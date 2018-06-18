defmodule ElixirMixProjectTest do
  use ExUnit.Case
  doctest ElixirMixProject

  test "greets the world" do
    assert ElixirMixProject.hello() == :world
  end
end
