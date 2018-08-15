defmodule CserverWeb.ExperimentsChannel do
  use CserverWeb, :channel
  require Logger

  @channel "experiments:*"

  def join(@channel, _message, socket) do
    {:ok, socket |> assign(:topics, [])}
  end

  def handle_in(event, payload, socket) do
    Logger.error "unknow handle_in event #{inspect event} with payload #{inspect payload}!"
    {:noreply, socket}
  end

  def handle_info(event, socket) do
    Logger.error "unknow handle_info event #{inspect event}!"
    {:noreply, socket}
  end

end
