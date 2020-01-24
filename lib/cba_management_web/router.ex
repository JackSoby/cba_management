defmodule CbaManagementWeb.Router do
  use CbaManagementWeb, :router
  import CbaManagement.UserManager.Pipeline

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

  pipeline :auth do
    plug CbaManagement.UserManager.Pipeline
  end

  # We use ensure_auth to fail if there is no one logged in
  pipeline :ensure_auth do
    plug Guardian.Plug.EnsureAuthenticated
  end

  scope "/", CbaManagementWeb do
    pipe_through [:browser, :auth]

    get "/", PageController, :index

    get "/login", SessionController, :new
    post "/login", SessionController, :login
    get "/logout", SessionController, :logout
  end

  scope "/", CbaManagementWeb do
    pipe_through [:browser, :auth, :ensure_auth]

    get "/protected", PageController, :protected
  end

  scope "/", CbaManagementWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/add-district", DistrictController, :index
    get "/district/:id", DistrictController, :show
    get "/agreement/:id", AgreementController, :show

    post "/create-district", DistrictController, :create_district
    post "/create-agreement", AgreementController, :create_agreement

    post "/create-year-of-exp", AgreementController, :create_year_of_experince
  end

  # Other scopes may use custom stacks.
  # scope "/api", CbaManagementWeb do
  #   pipe_through :api
  # end
end
