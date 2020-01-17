defmodule Registration.UserView do
  use Registration.Web, :view
  alias Registration.User
  def username(%User{username: username}) do
  username
  |> String.split(" ")
  |> Enum.at(0)
  end
end
