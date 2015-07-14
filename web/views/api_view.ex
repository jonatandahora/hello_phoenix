defmodule HelloPhoenix.ApiView do
  use HelloPhoenix.Web, :view

  def render("index.json", %{users: users}) do
    users
  end
end
