defmodule Exam2.User do
  use Exam2.Web, :model
  use Ecto.Schema
  schema "users" do
  field :mobilenumber, :string
  field :username, :string
  field :password, :string, virtual: true
  field :password_hash, :string
  timestamps()
  end


  def changeset(model, params \\ %{}) do

    model
    |> cast(params, ~w(username mobilenumber), [])
    |> validate_format(:mobilenumber, ~r/^[0-9_]*$/)
    |> validate_length(:mobilenumber, min: 12, max: 12)
    |> validate_length(:username, min: 1, max: 255)
    |>  validate_format(:username, ~r/@/)
    |> unique_constraint(:username)
    |> cast(params, [:username])
    |> validate_required([:username])


    end





  def registration_changeset(model, params) do
      model
      |> changeset(params)
      |> cast(params, ~w(password), [])
      |> validate_length(:password, min: 8, max: 80)
      |> validate_required([:password ])



  end

  end
