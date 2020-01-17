defmodule Exam.UserController do
  use Exam.Web, :controller
  def index(conn, _params) do

    users = Repo.all(Exam.User)

    render conn, "index.html", users: users
end
  def show(conn, %{"id" => id}) do
    users = Repo.get(Exam.User, id)
    render conn, "show.html", users: users
    end
  end
