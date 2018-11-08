defmodule Hanoi.Initializer do
  def get_disks( ) do
    question = "How many disks do you want to use? "
    answer = prompter( question )

    disk_count = Integer.parse( answer )

    case( disk_count ) do
      :error -> help_message( )
      {number, _ } -> number
    end
  end

  def prompter( question ) do
    s = IO.gets( question )

    case( s ) do
      "\n" -> help_message( )
      _    -> String.trim_trailing( s )
    end
  end

  defp help_message( ) do
    IO.puts( "Please enter a number." )
    get_disks( )
  end
end
