defmodule Exam2.UserController do
  use Exam2.Web, :controller
  def index(conn, _params) do
  users = Repo.all(Exam2.User)
  render conn, "index.html", users: users
  end
  def show(conn, %{"id" => id}) do

    user = Repo.get(Exam2.User, id)

    render conn, "show.html", user: user
    end

    alias Exam2.User
def new(conn, _params) do
changeset = User.changeset(%User{})
render conn, "new.html", changeset: changeset
end

def create(conn, %{"user" => user_params}) do
  changeset = User.registration_changeset(%User{}, user_params)
  case Repo.insert(changeset) do
  {:ok, user} ->
  conn
  |> put_flash(:info, "#{user.username} created!")
  |> redirect(to: user_path(conn, :index))
  {:error, changeset} ->
  render conn, "new.html", changeset: changeset
end
end

  end
