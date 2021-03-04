defmodule Kwiq1 do
  @moduledoc """
  Documentation for `Kwiq1`.
  """

  def hello(timeout) when timeout in (1..11) do
    :timer.sleep(timeout * 1000)
  end

  def hello(timeout) when timeout==40 do
    :timer.sleep(timeout * 1000)
  end

end
