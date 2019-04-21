defmodule Problem do
  
  def solve do
    sequence()
      |> Stream.filter(&prime?/1)
      |> Stream.take_while(&(&1 < 2_000_000))
      |> Enum.reduce(0, &(&1 + &2))
  end

  def sequence do
    Stream.iterate(0, &(&1 + 1))
  end

  def prime?(x) when x in [2, 3, 5, 7, 11, 13, 17], do: true
  def prime?(x) do
    Enum.all?((2..round(:math.sqrt(x))), &(rem(x, &1) != 0))
  end
end

IO.puts Problem.solve