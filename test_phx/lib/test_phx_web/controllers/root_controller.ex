defmodule TestPhxWeb.RootController do
  use TestPhxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json")
  end
end
