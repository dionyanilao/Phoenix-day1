# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :exam2,
  ecto_repos: [Exam2.Repo]

# Configures the endpoint
config :exam2, Exam2.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "63noVz0q2vYoOQs2li+z/ozR6x81nknztymnUBhzmDhHtFiIal0UxKJ1zQeNus4H",
  render_errors: [view: Exam2.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Exam2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
