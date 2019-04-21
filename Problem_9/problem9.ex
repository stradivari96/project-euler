defmodule Problem do
  
  def solve do
    Stream.iterate(1, &(&1+1))
    |> Enum.take_while(&(&1 < 1000))
    |> Enum.flat_map(&gen_abc/1)
    |> Enum.find(&solution?/1)
    |> (fn({a,b,c}) -> a*b*c end).()
  end

  def gen_abc(c) do
    Enum.map(2..(1000-c), fn(b) -> {1000-c-b, b, c} end)
  end

  def solution?({a, b, c}) do
    a+b+c == 1000 && a*a+b*b == c*c
  end
end

IO.puts Problem.solve