defmodule CbaManagement.Repo.Migrations.CreateDistrict do
  use Ecto.Migration

  def change do
    create table(:districts) do
      add :name, :string
      add :phone_number, :string
      add :zip_code, :string

      timestamps()
    end
  end
end
