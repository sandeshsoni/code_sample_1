defmodule Kwiq1Test do
  use ExUnit.Case
  doctest Kwiq1

  describe "responds to " do

    @tag :skip
    test "hello functions 1 to 11" do
      assert Kwiq1.hello(1)
      assert Kwiq1.hello(2)
      assert Kwiq1.hello(9)
    end

    @tag :skip
    test "no such fn 12" do
      assert catch_error Kwiq1.hello(12)
    end

    @tag :skip
    test "40 seconds" do
      assert Kwiq1.hello(40)
    end

  end

end
