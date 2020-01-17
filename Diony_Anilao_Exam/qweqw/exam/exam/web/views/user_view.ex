defmodule Exam.UserView do
  use Exam.Web, :view
  alias Exam.User
  def username(%User{username: username}) do
  username
  |> String.split(" ")
  |> Enum.at(0)
  end
  end
