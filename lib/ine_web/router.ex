defmodule INEWeb.Router do
  use INEWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/agua", INEWeb do
    pipe_through :browser # Use the default browser stack

    get "/", AguaController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", INEWeb do
  #   pipe_through :api
  # end
end
