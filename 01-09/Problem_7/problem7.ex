defmodule Problem do
  
  def solve do
    Stream.iterate(0, &(&1 + 1))
      |> Stream.filter(&prime?/1)
      |> Enum.take(10_001)
      |> Enum.at(-1)
  end

  def prime?(x) when x in [2, 3, 5, 7, 11, 13], do: true
  def prime?(x) do
    Enum.all?((2..round(:math.sqrt(x))), &(rem(x, &1) != 0))
  end
end


IO.puts Problem.solve