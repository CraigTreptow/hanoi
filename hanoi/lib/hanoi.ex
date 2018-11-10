defmodule Hanoi do
  def start() do
    number_of_disks = Hanoi.Initializer.get_disks()

    tower1 = Enum.to_list(1..number_of_disks)
    tower2 = []
    tower3 = []

    Hanoi.Tower.display_towers(tower1, tower2, tower3, number_of_disks)

    IO.puts("Solving...")

    Hanoi.Solver.solve(tower1, tower2, tower3, number_of_disks)
  end
end
