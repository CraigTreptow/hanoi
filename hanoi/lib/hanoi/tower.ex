defmodule Hanoi.Tower do

  def display([head | [] ]), do: print_disk(head)
  def display([head | tail]) do
    print_disk(head)
    display(tail)
  end

  defp print_disk(disk) do
    String.duplicate("_", disk)
    |> IO.puts
  end
end
