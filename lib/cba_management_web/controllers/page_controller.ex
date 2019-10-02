defmodule CbaManagementWeb.PageController do
  use CbaManagementWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
