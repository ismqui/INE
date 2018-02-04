defmodule INEWeb.AguaView do
  use INEWeb, :view

  def get_places do
    CaptacionAgua.get_places
  end
end
