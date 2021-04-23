defmodule SuppliescontrolWeb.RestaurantsView do
  use SuppliescontrolWeb, :view

  def render("create.json", %{restaurant: restaurant}) do
    %{
      message: "Restaurant created",
      restaurant: restaurant
    }
  end
end
