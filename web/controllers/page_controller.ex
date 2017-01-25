defmodule TannerRentals.PageController do
  use TannerRentals.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
