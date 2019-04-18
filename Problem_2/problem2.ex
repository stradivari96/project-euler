defmodule Fib do
  def fibonacci_sequence do
    Stream.unfold({1,1}, fn {a,b} -> {a, {b, a + b}} end)
  end
end

Fib.fibonacci_sequence
  |> Stream.take_while(&(&1 < 4000000))
  |> Stream.filter(&(rem(&1, 2) ==0))
  |> Enum.sum
  |> IO.puts