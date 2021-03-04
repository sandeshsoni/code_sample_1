defmodule Kwiq1Test do
  use ExUnit.Case
  doctest Kwiq1

  test "hello functions 1 to 11" do
    assert Kwiq1.hello(1)
    assert Kwiq1.hello(2)
    assert Kwiq1.hello(9)
  end

  test "no such fn" do
    assert catch_error Kwiq1.hello(12)
  end

end
