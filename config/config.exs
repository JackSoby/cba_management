# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cba_management,
  ecto_repos: [CbaManagement.Repo]

# Configures the endpoint
config :cba_management, CbaManagementWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v51eJvlT6oLxouc9PfcENI0Oq+yuximrn7CBl/Oez0zR5ojC8QRAOUL73hu27zuY",
  render_errors: [view: CbaManagementWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CbaManagement.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :cba_management, CbaManagement.UserManager.Guardian,
  issuer: "cba_management",
  secret_key: "Zvv1MO+9Frwzou6yg4Mwyj7cVgUdkIeGecmBxfq4D7tId9cAhbmmfwjuCgVOXyFl"
