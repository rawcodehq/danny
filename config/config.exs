# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :danny,
  ecto_repos: [Danny.Repo]

# Configures the endpoint
config :danny, Danny.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UwcKMwVb9D/RHAYukVFBpDe24eltJfP2MU9cslxoRDN+/6s0Bql6nR8eBUzCLAz6",
  render_errors: [view: Danny.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Danny.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
