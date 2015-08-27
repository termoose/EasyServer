defmodule EasyServerTest do
  use ExUnit.Case
	use EasyServer

	# Define some simple queue functionality
	cast(:push, state, element) do
		{:noreply, [element|state]}
	end

	call(:pop, [h|t], _from) do
		{:reply, h, t}
	end

	call(:list, state, _from) do
		{:reply, state, state}
	end

	# Tests
	test "initialize a queue" do
		EasyServerTest.start_link([1,2,3])

		assert [1, 2, 3] == list
	end

	test "push to queue" do
		EasyServerTest.start_link([])
		push("some element")

		assert "some element" == hd(list)
	end		
	
	test "pop from queue" do
		EasyServerTest.start_link([1, 2, 3])

		assert 1 == pop
	end
end
