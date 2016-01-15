defmodule Catartico do
  use Application
  require Logger

  @moduledoc """
  Listen database and distribute messages to another processes.
  """

  defmodule DBListener do
    use Boltun, otp_app: :catartico
    listen do
      channel "catartico_rdstation", Catartico.Rdstation, :process, []
    end
  end

  def start(_type, _args) do
    Logger.info "Starting catartico process.."
    import Supervisor.Spec, warn: false

    children = [
      worker(Catartico.DBListener, [])
    ]

    opts = [strategy: :one_for_one, name: Catartico.Supervisor]
    Logger.info "Catartico started..."
    Supervisor.start_link(children, opts)
  end
end
