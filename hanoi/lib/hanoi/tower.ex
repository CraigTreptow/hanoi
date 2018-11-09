defmodule Hanoi.Tower do

  def display([head | [] ]), do: print_disk(head, 0)
  def display([head | tail]) do
    max = Enum.max(tail)
    print_disk(head, max)
    display(tail)
  end

  defp print_disk(disk, 0) do
    lines = String.duplicate("_", disk)

    lines
    |> IO.puts
  end

  defp print_disk(disk, max) do
    spaces = String.duplicate(" ", round((max/2) - (disk/2)))
    lines = String.duplicate("_", disk)

    spaces <> lines
    |> IO.puts
  end
end
