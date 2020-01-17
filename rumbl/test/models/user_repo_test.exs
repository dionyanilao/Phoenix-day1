defmodule Rumbl.UserRepoTest do
  use Rumbl.ModelCase
  use Rumbl.ConnCase
  alias Rumbl.User

 @valid_attrs %{name: "A User", username: "eva", password: "supersecret"}

 test "converts unique_constraint on username to error" do
     insert_user(username: "eric")
     attrs = Map.put(@valid_attrs, :username, "eric")
     changeset = User.changeset(%User{}, attrs)

     assert {:error, changeset} = Repo.insert(changeset)
     refute changeset.valid?
 end
end
