defmodule Kwiq1 do
  @moduledoc """
  Documentation for `Kwiq1`.
  """

  def hello(timeout) when timeout in 1..20 do
    :timer.sleep(timeout * 1_000)
    {:ok, %{a: timeout}}
  end

  def hello(timeout) when timeout == 40 do
    :timer.sleep(timeout * 1_000)
    {:ok, %{d: timeout}}
  end


  def hello_all(list) do

    # list
    # |> Task.async_stream(&hello/1, timeout: 50_000)
    # |> Enum.to_list()

    list
    |> Enum.map(fn seq -> Task.async(fn -> hello(seq) end) end)
    |> Enum.map(&Task.await(&1, 30_000))

  end

  def api1 do
    :timer.sleep(1_000)
    {:ok, %{a: 1}}
  end
  def api2 do
    :timer.sleep(2_000)
    {:ok, %{a: 1}}
  end
  def api3 do
    :timer.sleep(3_000)
    {:ok, %{a: 1}}
  end
  def api4 do
    :timer.sleep(4_000)
    {:ok, %{a: 1}}
  end
  def api5 do
    :timer.sleep(5_000)
    {:ok, %{a: 1}}
  end
  def api10 do
    :timer.sleep(10_000)
    {:ok, %{a: 1}}
  end
  def api15 do
    :timer.sleep(15_000)
    {:ok, %{a: 1}}
  end
  def api25 do
    # :timer.sleep(25_000)
    Process.sleep(25_000)
    {:ok, %{a: 1}}
  end
  def api40 do
    # :timer.sleep(40_000)
    Process.sleep(40_000)
    {:ok, %{a: 40_000}}
  end


  def call_api_list(list) do
    list
    |> Enum.map(fn fun -> Task.async(Kwiq1, fun, []) end)
    |> Enum.map(&Task.await(&1, 25_000))
  end


end
