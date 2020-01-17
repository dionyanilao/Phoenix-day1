defmodule Rumbl.VideoTest do
  use Rumbl.ModelCase

  alias Rumbl.Video


  @invalid_attrs %{}
  @valid_attrs %{url: "some content", description: "some content", title: "some content"}


  test "changeset with valid attributes" do
    changeset = Video.changeset(%Video{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Video.changeset(%Video{}, @invalid_attrs)
    assert changeset.valid?

  end
end
