# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ine,
  namespace: INE

# Configures the endpoint
config :ine, INEWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AsKF/eXGEC9Gc7XUEyFMOgyqMOPSOytyLYH/35MFndc4Y8keCGpiS2yEkjcp7pFN",
  render_errors: [view: INEWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: INE.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
