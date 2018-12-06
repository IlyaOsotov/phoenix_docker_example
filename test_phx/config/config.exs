# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :test_phx,
  ecto_repos: [TestPhx.Repo]

# Configures the endpoint
config :test_phx, TestPhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nuQsKu43Yx5L+VCLW5cVRsbyNvBTJUDe+c1MsRkBsQQCCdwO6BnWqgP8rA+oLkE5",
  render_errors: [view: TestPhxWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: TestPhx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
