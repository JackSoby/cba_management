defmodule CbaManagement.Repo.Migrations.CreateYears do
  use Ecto.Migration

  def change do
    create table(:years) do
      add :number_of_years, :string
      add :amount, :string
      add :agreement_id, references(:agreements)

      timestamps()
    end
  end
end
