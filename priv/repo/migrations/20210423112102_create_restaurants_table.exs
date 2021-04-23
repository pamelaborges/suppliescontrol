defmodule Suppliescontrol.Repo.Migrations.CreateRestaurantsTable do
  use Ecto.Migration

  def change do
    create table(:restaurants) do
      add :email, :string
      add :name, :string

      timestamps() #cria os campos de audit
    end

    create unique_index(:restaurants, [:email])
  end
end
