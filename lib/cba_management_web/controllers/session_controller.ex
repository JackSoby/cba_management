defmodule CbaManagementWeb.SessionController do
  use CbaManagementWeb, :controller
  require IEx
  alias CbaManagement.{UserManager, UserManager.User, UserManager.Guardian}

  def new(conn, _) do
    changeset = UserManager.change_user(%User{})
    maybe_user = Guardian.Plug.current_resource(conn)

    if maybe_user do
      redirect(conn, to: "/protected")
    else
      render(conn, "new.html", changeset: changeset, action: Routes.session_path(conn, :login))
    end
  end

  def login(conn, %{"user" => %{"username" => username, "password" => password}}) do
    res = UserManager.authenticate_user(username, password)

    res
    |> login_reply(conn)
  end

  def logout(conn, _) do
    conn
    # This module's full name is Auth.UserManager.Guardian.Plug,
    |> Guardian.Plug.sign_out()
    # and the arguments specfied in the Guardian.Plug.sign_out()
    |> redirect(to: "/")
  end

  # docs are not applicable here

  defp login_reply({:ok, user}, conn) do
    res =
      conn
      |> put_flash(:info, "Welcome back!")
      # This module's full name is Auth.UserManager.Guardian.Plug,
      |> Guardian.Plug.sign_in(user)

    res
    # and the arguments specified in the Guardian.Plug.sign_in()
    |> redirect(to: "/add-district")
  end

  # docs are not applicable here.

  defp login_reply({:error, reason}, conn) do
    conn
    |> put_flash(:error, to_string(reason))
    |> new(%{})
  end
end
