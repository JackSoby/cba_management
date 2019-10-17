defmodule CbaManagementWeb.Router do
  use CbaManagementWeb, :router

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

  scope "/", CbaManagementWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/add-district", DistrictController, :index
    post "/create-district", DistrictController, :create_district
  end

  # Other scopes may use custom stacks.
  # scope "/api", CbaManagementWeb do
  #   pipe_through :api
  # end
end
