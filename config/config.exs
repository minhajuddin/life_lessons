# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :life_lessons,
  ecto_repos: [LifeLessons.Repo]

# Configures the endpoint
config :life_lessons, LifeLessons.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4JTLIvesRyCRmj+fL3YvXTepNID6G5U+ItICILEFWeWRztU8R6OZ8doY+L6G9EZ2",
  render_errors: [view: LifeLessons.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LifeLessons.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
