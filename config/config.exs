# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pipeline_ci,
  ecto_repos: [PipelineCi.Repo]

# Configures the endpoint
config :pipeline_ci, PipelineCiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Yza+a9my4ko1DcJCohS98JD5vLl2p4dhIreP6x8sZnXskjYWKnEy9blU9p9bEP0Z",
  render_errors: [view: PipelineCiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PipelineCi.PubSub,
  live_view: [signing_salt: "v9DbYBa8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
