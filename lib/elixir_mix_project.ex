defmodule ElixirMixProject do
  @moduledoc """
  Documentation for ElixirMixProject.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirMixProject.hello
      :world

  """
  def hello do
    :world
  end

  def power(a, n) when (n > 0) do a * power(a, n - 1) end 
  def power(_a, _) do 1 end
  
  def sqrt(a) do sqrtUtil(a, 0)end
  def sqrtUtil(a, r) when ((r * r) == a) do r end
  def sqrtUtil(a, r) when ((r * r) < a) do sqrtUtil(a, r + 0.000001) end
  def sqrtUtil(_, r) do r - 0.000001 end
  
  def factorial(0) do 1 end
  def factorial(n) do factorial(n-1)*n end
  
  #calculate sin and cos using Taylor Series
  def sin(a) do sinUtil(a, 5, 0) end
  def sinUtil(_a, -1, acc) do acc end
  def sinUtil(a, n, acc) do
    tmpValue = power(-1, n) * power(a, 2 * n + 1) / factorial(2 * n + 1)
    sinUtil(a, n - 1, acc + tmpValue)
  end
  
  def cos(a) do cosUtil(a, 5, 0) end
  def cosUtil(_a, -1, acc) do acc end
  def cosUtil(a, n, acc) do
    tmpValue = power(-1, n) * power(a, 2 * n) / factorial(2 * n)
    cosUtil(a, n - 1, acc + tmpValue)
  end

  def onpCalc([],[acc]) do acc end
  def onpCalc([a | list],[l1 , l2|l]) when (a == "+") do onpCalc(list,[(l1 + l2)|l]) end
  def onpCalc([a | list],[l1 , l2|l]) when (a == "-") do onpCalc(list,[(l2 - l1)|l]) end
  def onpCalc([a | list],[l1 , l2|l]) when (a == "*") do onpCalc(list,[(l1 * l2)|l]) end
  def onpCalc([a | list],[l1 , l2|l]) when (a == "/") do onpCalc(list,[(l2 / l1)|l]) end
  def onpCalc([a | list],[]) do onpCalc(list,[a]) end
  def onpCalc([a | list],[l | tail]) do onpCalc(list,[a]++[l|tail]) end

end