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

  describe "call all concurrently" do

    @tag :skip
    test "hello all, catch exit for above 30 seconds" do
      list_with_40_sec = [1, 3, 18, 40]

      assert catch_exit Kwiq1.hello_all(list_with_40_sec)
    end

    @tag :skip
    test "hello all, not catch exit for below 30 seconds" do
      list_with_20_sec = [1, 3, 18, 20]

      assert Kwiq1.hello_all(list_with_20_sec)
    end
  end

  describe "call all concurrently, another attempt" do

    @tag :skip
    test "api all, catch exit for above 30 seconds" do
      assert catch_exit Kwiq1.call_api_list api_under_40()
    end

    @tag :skip
    test "api all, not catch exit for below 30 seconds" do
      assert Kwiq1.call_api_list api_under_20()
    end
  end

  describe "call all concurrently, another attempt 3" do

    @tag :skip
    test "api all, catch exit for above 30 seconds" do
      assert catch_exit Kwiq1.async_call_api_list api_under_40()
    end

    @tag :skip
    test "api all, not catch exit for below 30 seconds" do
      assert Kwiq1.async_call_api_list api_under_20()
    end
  end

  describe "Supervised API calls" do

    test "api all, catch exit for above 30 seconds" do
      assert Kwiq1.supervised_call_api_list api_under_40()
    end

    test "api all, not catch exit for below 30 seconds" do
      assert Kwiq1.supervised_call_api_list api_under_20()
    end
  end
  #move to setup
  def api_under_20 do
    ~w(api1 api2 api3 api4 api5 api10 api15)a
  end
  def api_under_40 do
    ~w(api1 api2 api3 api4 api5 api10 api15 api25 api40)a
  end

end
