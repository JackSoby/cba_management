defmodule CbaManagement.Repo do
  use Ecto.Repo,
    otp_app: :cba_management,
    adapter: Ecto.Adapters.Postgres
end
