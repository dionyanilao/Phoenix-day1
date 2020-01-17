defmodule Exam2.PageController do
  use Exam2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
