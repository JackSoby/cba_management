defmodule CbaManagement.Repo.Migrations.CreateAgreement do
  use Ecto.Migration

  def change do
    create table(:agreements) do
      add :name, :string
      add :year, :string
      add :district_id, references(:districts)

      timestamps()
    end
  end
end
