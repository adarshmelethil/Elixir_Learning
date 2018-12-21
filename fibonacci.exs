defmodule Fibonacci do
  def fib(a, _, 0) do a end
  def fib(a, b, n) do fib(b, a+b, n-1) end
end

IO.puts Fibonacci.fib(1,1,100)