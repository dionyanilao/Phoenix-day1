defmodule Registration.Repo do
  @moduledoc """
In memory repository.
"""
def all(Registration.User) do
  [%Registration.User{id: "1", mobileNumber: "091564", username: "josevalim", password: "elixir"},
  %Registration.User{id: "2", mobileNumber: "Bruce", username: "redrapids", password: "7langs"},
  %Registration.User{id: "3", mobileNumber: "Chris", username: "chrismccord", password: "phx"}]
  end

  def all(_module), do: []
  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end
    def get_by(module, params) do
      Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
end
