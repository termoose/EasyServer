EasyServer
==========

Tired of defining your `handle_call` or `handle_cast` functions as well as the client functions for issuing the `GenServer.call` and `GenServer.cast`? Look no further!

Add the library to your `deps` in `mix.exs`:

```elixir
{:easy_server, "~> 0.0.1"}
```

# Example usage

```elixir
use EasyServer

cast(:push, state, element) do
    {:noreply, [element | state]}
end

call(:pop, [h | t], _from) do
    {:reply, h, t}
end
```

You can implement `handle_info` etc. as you normally would with `GenServer`.