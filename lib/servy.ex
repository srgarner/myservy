defmodule Servy do
  use Appllication

  def start(_type, _arg) do
    IO.puts "Starting the application..."
    Servy.Supervisor.start_link()
  end
end
