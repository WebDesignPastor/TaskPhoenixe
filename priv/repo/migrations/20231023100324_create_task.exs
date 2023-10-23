defmodule Test.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table (:tasks) do
      add :title, :string
      add :description, :string
      add :status, :boolean
      add :user_id, references(:users)
      timestamps()
    end
  end
end
