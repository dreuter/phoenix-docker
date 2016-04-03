use Mix.Config

import System, only: [get_env: 1]

config :hello_phoenix, HelloPhoenix.Endpoint,
  http: [port: 4000]

config :logger, level: :info

# Configure your database
config :hello_phoenix, HelloPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: get_env("POSTGRES_USER"),
  password: get_env("POSTGRES_PASSWORD"),
  database: "hello_phoenix",
  hostname: get_env("POSTGRES_HOSTNAME"),
  pool_size: 10
