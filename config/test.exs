use Mix.Config

config :rocketpay, Rocketpay.Repo,
  username: "postgres",
  password: "postgres",
  database: "rocketpay_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :rocketpay, RocketpayWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
