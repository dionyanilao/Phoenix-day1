defmodule Exam2.Repo do
#   @moduledoc """
# In memory repository.
# """
  use Ecto.Repo, otp_app: :exam2
#   def all(Exam2.User) do
#     [%Exam2.User{id: "1", mobilenumber: "123", username: "josevalim", password: "elixir"},
#     %Exam2.User{id: "2", mobilenumber: "456", username: "redrapids", password: "7langs"},
#     %Exam2.User{id: "3", mobilenumber: "876", username: "chrismccord", password: "phx"}]
#     end
#     def all(_module), do: []
#     def get(module, id) do
# Enum.find all(module), fn map -> map.id == id end
# end
# def get_by(module, params) do
# Enum.find all(module), fn map ->
# Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
# end
# end
end
