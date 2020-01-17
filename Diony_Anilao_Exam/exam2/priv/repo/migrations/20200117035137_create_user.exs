defmodule Exam2.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :mobilenumber, :string
      add :username, :string, null: false
      add :password_hash, :string
      timestamps
      end
      create unique_index(:users, [:username])
  end
end