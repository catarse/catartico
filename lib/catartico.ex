defmodule Catartico do
  use Boltun, otp_app: :catartico
  require Logger

  @moduledoc """
  Listen database and distribute messages to another processes.
  """

  listen do
    channel "catartico_rdstation", Catartico.Rdstation, :process, []
  end
end
