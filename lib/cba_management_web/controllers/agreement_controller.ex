defmodule CbaManagementWeb.AgreementController do
  use CbaManagementWeb, :controller
  require IEx
  alias CbaManagement.CbaManager

  def create_agreement(conn, %{"district_id" => district_id} = params) do
    result = CbaManager.create_agreement(params)

    conn
    |> redirect(to: "/district/#{district_id}")
  end

  def create_year_of_experince(
        conn,
        %{
          "agreement_id" => agreement_id,
          "amount" => amount,
          "number_of_years" => years_of_experince
        } = params
      ) do
    result = CbaManager.create_year(params)

    conn
    |> redirect(to: Routes.district_path(conn, :show))
  end

  def show(conn, %{"id" => id}) do
    agreement = CbaManager.get_agreement!(id)
    render(conn, "show.html", agreement: agreement)
  end
end
