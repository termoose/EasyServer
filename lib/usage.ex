defmodule EasyServer.Usage do
	use EasyServer
	
	cast(:push, state, element) do
		{:noreply, [element|state]}
	end

	call(:pop, [h|t], _from) do
		{:reply, h, t}
	end

end
