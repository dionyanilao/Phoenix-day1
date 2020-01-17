defmodule Exam2.UserView do
  use Exam2.Web, :view
  alias Exam2.User
  def first_name(%User{username: username}) do
  username
  |> String.split(" ")
  |> Enum.at(0)
  end
  end
