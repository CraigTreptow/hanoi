defmodule Hanoi do
  def start( ) do
    number_of_disks = Hanoi.Initializer.get_disks( )
    IO.puts "Working on Hanoi with #{number_of_disks}"
  end
end
