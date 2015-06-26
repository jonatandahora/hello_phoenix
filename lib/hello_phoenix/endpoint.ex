defmodule HelloPhoenix.Endpoint do
  use Phoenix.Endpoint, otp_app: :hello_phoenix

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :hello_phoenix,
    only: ~w(css images js favicon.ico robots.txt)

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  # if code_reloading do
  #   plug Phoenix.CodeReloader
  # end

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_hello_phoenix_key",
    signing_salt: "/GLqTXIO",
    encryption_salt: "8929rQYr"

  plug :router, HelloPhoenix.Router
end
