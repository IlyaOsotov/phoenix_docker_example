defmodule TestPhxWeb.Router do
  use TestPhxWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TestPhxWeb do
    pipe_through :api

    get "/", RootController, :index
  end
end
