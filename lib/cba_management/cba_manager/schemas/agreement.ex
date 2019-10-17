defmodule CbaManagement.CbaManager.Schemas.Agreement do
  use Ecto.Schema
  import Ecto.Changeset
  alias CbaManagement.CbaManager.Schemas.District
  alias CbaManagement.CbaManager.Schemas.Year

  schema "agreements" do
    field :name, :string
    field :year, :string
    belongs_to(:district, CbaManagement.CbaManager.Schemas.District)
    has_many(:years, CbaManagement.CbaManager.Schemas.Year)

    timestamps()
  end

  @doc false
  def changeset(agreement, attrs) do
    agreement
    |> cast(attrs, [:name, :district_id, :year])
    |> validate_required([:name, :district_id, :year])
  end
end
