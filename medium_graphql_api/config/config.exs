# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :medium_graphql_api,
  ecto_repos: [MediumGraphqlApi.Repo]

# Configures the endpoint
config :medium_graphql_api, MediumGraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lCwTWEGWcqQQ9EkhFOXBO3wyW8en3bZ0Y9MWf9SsDpGEMip3slrBihRiiYOAPNHJ",
  render_errors: [view: MediumGraphqlApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MediumGraphqlApi.PubSub,
  live_view: [signing_salt: "KdM9OQc6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
# Guardian details
config :medium_graphql_api, MediumGraphqlApi.Guardian,
  issuer: "medium_graphql_api",
  secret_key: "k5nb5f/P+hS7zFlxJTuPBxe5Ecyeos0FCFgDfn4nzbBtHNrewPyyJJjGLoU7Rk/e"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
