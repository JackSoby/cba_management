defmodule CbaManagement.CbaManager.Schemas.Year do
  use Ecto.Schema
  import Ecto.Changeset

  schema "years" do
    field :amount, :string
    field :number_of_years, :string
    belongs_to(:agreement, CbaManagement.CbaManager.Schemas.Agreement)

    timestamps()
  end

  @doc false
  def changeset(year, attrs) do
    year
    |> cast(attrs, [:number_of_years, :agreement_id, :amount])
    |> validate_required([:number_of_years, :agreement_id, :amount])
  end
end
