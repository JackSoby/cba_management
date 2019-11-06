defmodule CbaManagementWeb.DistrictController do
  use CbaManagementWeb, :controller
  require IEx
  alias CbaManagement.CbaManager

  def index(conn, _params) do
    districts = CbaManager.list_district()

    render(conn, "index.html", districts: districts)
  end

  def show(conn, %{"id" => id}) do
    district = CbaManager.get_district!(id)

    render(conn, "show.html", district: district)
  end

  def create_district(conn, params) do
    result = CbaManager.create_district(params)

    conn
    |> redirect(to: Routes.district_path(conn, :index))
  end
end
