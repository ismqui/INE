defmodule INEWeb.AguaController do
  use INEWeb, :controller

  def index(conn, _params) do

    render conn, "index.html", places: INEWeb.AguaView.get_places()
  end
end
