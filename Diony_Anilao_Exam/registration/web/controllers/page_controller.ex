defmodule Registration.PageController do
  use Registration.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
