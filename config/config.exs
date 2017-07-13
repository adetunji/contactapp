# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :contactapp,
  ecto_repos: [Contactapp.Repo]

# Configures the endpoint
config :contactapp, Contactapp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5CM14fUXE8vOQ56eO4IlHBnlqCFRf+HJIRcLV9aVm8702CDq9FDTISWAb7trUPvw",
  render_errors: [view: Contactapp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Contactapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
