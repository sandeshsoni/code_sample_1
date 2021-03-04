defmodule Kwiq1 do
  @moduledoc """
  Documentation for `Kwiq1`.
  """

  def hello(timeout) when timeout in 1..11 do
    :timer.sleep(timeout * 1000)
    {:ok, %{a: timeout}}
  end

  def hello(timeout) when timeout == 40 do
    :timer.sleep(timeout * 1000)
    {:ok, %{a: timeout}}
  end

  def hello_all do
    list = [1, 3, 5, 10]

    list
    |> Task.async_stream(&hello/1, timeout: 50_000)
    |> Enum.to_list()
  end
end
