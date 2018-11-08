defmodule HanoiTest do
  use ExUnit.Case
  doctest Hanoi

  test "greets the world" do
    assert Hanoi.hello() == :world
  end
end
