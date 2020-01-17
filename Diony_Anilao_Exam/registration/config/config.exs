# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :registration,
  ecto_repos: [Registration.Repo]

# Configures the endpoint
config :registration, Registration.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6bNS1yJMfN5tinFYgokn1Vb9CszxUomekewinA2qGFunvBxUBrfvCqrtXo2Tf9m0",
  render_errors: [view: Registration.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Registration.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
