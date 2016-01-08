defmodule Catartico.Conversions do
  require Logger

  @moduledoc """
  Handles with all conversions events
  """

  def process(_, payload) do
    Logger.info "Received listen payload #{payload}"
  end
end
