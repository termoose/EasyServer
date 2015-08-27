defmodule EasyServer do
  defmacro __using__(_opts) do
    quote do
      use GenServer
      import EasyServer
      def start_link(state) do
        GenServer.start_link(__MODULE__, state, name: __MODULE__)
      end
    end
  end

  defmacro call(function, state, from, arg \\ [], do: block) do
    quote do
      def unquote(function)(unquote(arg) \\ []) do
        GenServer.call(__MODULE__, {unquote(function), unquote(arg)})
      end
      
      def handle_call({unquote(function), unquote(arg)}, unquote(from), unquote(state)) do
        unquote(block)
      end
    end
  end

  defmacro cast(function, state, arg \\ [], do: block) do
    quote do
      def unquote(function)(unquote(arg) \\ []) do
        GenServer.cast(__MODULE__, {unquote(function), unquote(arg)})
      end
      
      def handle_cast({unquote(function), unquote(arg)}, unquote(state)) do
        unquote(block)
      end
    end
  end
end
