defmodule Catartico do
  use Application
  use Boltun, otp_app: :catartico
  require Logger

  @moduledoc """
  Listen database and distribute messages to another processes.
  """

  listen do
    channel "catartico_rdstation", Catartico.Rdstation, :process, []
  end

  def start(_type, _args) do
    Logger.info "Starting catartico process.."
    Catartico.start_link()
  end
end
