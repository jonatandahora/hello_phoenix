use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :hello_phoenix, HelloPhoenix.Endpoint,
  secret_key_base: "210InYMu/yVAlskSIXV0N9MvL+/qNjoKE+/BYnnKxr+j2y21y6PPJ+wJgpNZop71"

# Configure your database
config :hello_phoenix, HelloPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "jonatan",
  password: "1234",
  database: "hello_phoenix_prod"
