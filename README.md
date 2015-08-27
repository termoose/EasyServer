EasyServer
==========

Tired of defining your `handle_call` or `handle_cast` functions as well as the client functions for issuing the `GenServer.call` and `GenServer.cast`? Look no further!

Add the library to your `deps` in `mix.exs`:

    {:easy_server, "~> 0.0.1"}

# Example usage
    cast(:function_name, state, argument) do
        {:noreply, [element | state]}
    end

    call(:function_name, state, _from) do
        {:reply, state, state}
    end
