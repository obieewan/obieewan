defmodule Chapter3Test do
  use ExUnit.Case
  doctest Chapter3

  test "greets the world" do
    assert Chapter3.hello() == :world
  end

  test "calculate length of list" do
    assert ListRangePositive.list_length([1, 2, 3]) == 3
  end

  test "returns list of range" do
    assert ListRangePositive.range(1,5) == [1, 2, 3, 4, 5]
  end

  test "returns positive numbers" do
    assert ListRangePositive.positive([-1, 2 ,3]) == [2,3]
  end


end
