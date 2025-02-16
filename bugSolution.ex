```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Instead of exiting the process, we can use a flag
    throw(:exit_loop)
  end
  IO.puts(x)
end)

# Or, use Enum.reduce and handle the termination logic
list = [1, 2, 3, 4, 5]
result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    [:done]
  else
    [x | acc]
  end
end)

IO.inspect(Enum.reverse(result))
```