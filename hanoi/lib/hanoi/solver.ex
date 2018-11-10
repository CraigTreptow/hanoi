defmodule Hanoi.Solver do


  def display_towers(tower1, tower2, tower3, number_of_disks) do
    tower1
    |> Hanoi.Tower.display(number_of_disks)
    IO.puts String.duplicate("1", 80)

    tower2
    |> Hanoi.Tower.display(number_of_disks)
    IO.puts String.duplicate("2", 80)

    tower3
    |> Hanoi.Tower.display(number_of_disks)
    IO.puts String.duplicate("3", 80)
  end

  def display([ ], number_of_disks), do: print_empty_tower( number_of_disks )
  def display([head | [] ], _number_of_disks), do: print_disk(head, 0)
  def display([head | tail], number_of_disks) do
    max = Enum.max(tail)
    print_disk(head, max)
    display(tail, number_of_disks)
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

  defp print_empty_tower( number_of_disks ) do
    fake_list = [ 0..number_of_disks ]
    for _item <- fake_list do
      IO.puts("|\n")
    end
  end
end
