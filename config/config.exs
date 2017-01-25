# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tanner_rentals,
  ecto_repos: [TannerRentals.Repo]

# Configures the endpoint
config :tanner_rentals, TannerRentals.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "arp7BcEcxp1t0gwLDJX3Z1e99cH0ZkFHiLlja4iGi4O9KZnIIW4bhazSWKJSa0pZ",
  render_errors: [view: TannerRentals.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TannerRentals.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
