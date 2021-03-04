defmodule Kwiq1Test do
  use ExUnit.Case
  doctest Kwiq1

  describe "responds to " do

    test "hello functions 1 to 11" do
      assert Kwiq1.hello(1)
      assert Kwiq1.hello(2)
      assert Kwiq1.hello(9)
    end

    test "no such fn 12" do
      assert catch_error Kwiq1.hello(12)
    end

    test "40 seconds" do
      assert Kwiq1.hello(40)
    end

  end

end
