defmodule CbaManagementWeb.DistrictController do
  use CbaManagementWeb, :controller
  require IEx

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create_district(conn, params) do
    IEx.pry()
    conn
  end
end
