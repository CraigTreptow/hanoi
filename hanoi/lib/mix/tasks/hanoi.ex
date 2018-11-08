defmodule Mix.Tasks.Hanoi do
  # Hanoi (above) is the name we want to use on the command line
  # so 'mix hanoi'

  use Mix.Task

  @shortdoc "Simply runs the Hanoi.start/0 function"

  def run(_) do
    Hanoi.start( )
  end
end
