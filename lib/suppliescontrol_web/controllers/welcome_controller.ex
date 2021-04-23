defmodule SuppliescontrolWeb.WelcomeController do
  use SuppliescontrolWeb, :controller
  alias Suppliescontrol.Welcomer

  def index(conn, params) do
    params
    |> Welcomer.welcome()
    |> handle_response(conn)
  end

  defp handle_response({:ok, msg}, conn), do: render_response(conn, msg, :ok)

  defp handle_response({:error, msg}, conn), do: render_response(conn, msg, :bad_request)

  defp render_response(conn, msg, status) do
    conn
    |> put_status(status)
    |> json(%{message: msg})
  end
end
