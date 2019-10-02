defmodule CbaManagement.CbaManager.Schemas.Agreement do
  use Ecto.Schema
  import Ecto.Changeset
  alias CbaManagement.CbaManager.Schemas.District

  schema "agreements" do
    field :name, :string
    field :year, :string
    belongs_to(:district, CbaManagement.CbaManager.Schemas.District)

    timestamps()
  end

  @doc false
  def changeset(agreement, attrs) do
    agreement
    |> cast(attrs, [:name, :year])
    |> validate_required([:name, :year])
  end
end
