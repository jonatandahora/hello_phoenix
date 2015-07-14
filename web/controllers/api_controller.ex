defmodule HelloPhoenix.ApiController do
  use HelloPhoenix.Web, :controller
  alias HelloPhoenix.Repo
  alias HelloPhoenix.User

  plug :action

  def index(conn, _params) do
    users = Repo.all(User)
    render conn, users: users
  end
end
