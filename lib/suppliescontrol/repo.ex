defmodule Suppliescontrol.Repo do
  use Ecto.Repo,
    otp_app: :suppliescontrol,
    adapter: Ecto.Adapters.Postgres
end
