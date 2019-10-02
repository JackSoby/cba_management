defmodule CbaManagement.CbaManager.Schemas.District do
  use Ecto.Schema
  import Ecto.Changeset
  alias CbaManagement.CbaManager.Schemas.Agreement

  schema "districts" do
    field :name, :string
    field :phone_number, :string
    field :zip_code, :string
    has_many(:agreements, CbaManagement.CbaManager.Schemas.Agreement)

    timestamps()
  end

  @doc false
  def changeset(district, attrs) do
    district
    |> cast(attrs, [:name, :phone_number, :zip_code])
    |> validate_required([:name, :phone_number, :zip_code])
  end
end
