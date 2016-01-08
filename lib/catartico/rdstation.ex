defmodule Catartico.Rdstation do
  require Logger

  @base_url "https://www.rdstation.com.br/api/1.2"
  @conversions_endpoint "#{@base_url}/conversions"

  @moduledoc """
  Handles payload from catartico_conversions channel
  """

  @doc """
  Handles with transformation of payload and sent to rdstation conversions api
  """
  def process(_, payload) do
    Logger.info "Received listen payload #{payload}"
  end
end
