defmodule Catartico do
  use Boltun, otp_app: :catartico
  require Logger

  @moduledoc """
  Listen database and distribute messages to another processes.
  """

  @conversions_channel "catartico_conversions"

  listen do
    channel @conversions_channel, Catartico.Conversions, :process, []
  end
end
