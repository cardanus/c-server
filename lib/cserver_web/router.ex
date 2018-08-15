defmodule CserverWeb.Router do
  use CserverWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CserverWeb do
    pipe_through :api
  end
end
