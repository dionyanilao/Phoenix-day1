# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :exam,
  ecto_repos: [Exam.Repo]

# Configures the endpoint
config :exam, Exam.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qif40FecbRrB//GaGWgoCHRjH1RjMl9COQktlbQEUPvPwC/E5zjz0AUs5NvCZG63",
  render_errors: [view: Exam.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Exam.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
