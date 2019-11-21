defmodule CbaManagementWeb.AgreementController do
  use CbaManagementWeb, :controller
  require IEx
  alias CbaManagement.CbaManager

  def create_agreement(conn, %{"district_id" => district_id} = params) do
    result = CbaManager.create_agreement(params)

    conn
    |> redirect(to: "/district/#{district_id}")
  end

  def show(conn, %{"id" => id}) do
    agreement = CbaManager.get_agreement!(id)

    render(conn, "show.html", agreement: agreement)
  end
end
