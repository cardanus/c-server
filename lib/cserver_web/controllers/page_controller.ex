defmodule CserverWeb.PageController do
  use CserverWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(403)
    |> send_resp(403, "Forbidden")
    |> halt
  end
end
