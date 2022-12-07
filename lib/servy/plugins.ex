defmodule Servy.Plugins do

  alias Servy.Conv
  @doc "logs 404 requests"
  def track(%Conv{status: 404, path: path} = conv) do
   IO.puts("Warning: #{path} is on the loose!")
   conv
 end

 def track(%Conv{} = conv), do: conv

 def rewrite_path(%Conv{path: "/wildlife"} = conv) do
   %{ conv | path: "/wildthings" }
 end

 #default for rewrite_path, returns map unchanged
 def rewrite_path(%Conv{} = conv), do: conv

 def log(%Conv{} = conv), do: IO.inspect conv
end
