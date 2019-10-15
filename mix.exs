defmodule EasyServer.Mixfile do
  use Mix.Project

  def project do
    [app: :easy_server,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: [
       files: ["lib/easy_server.ex",
               "test/easy_server_test.exs",
               "test/test_helper.exs",
               "config/config.exs",
               "mix.exs",
               "README.md"],
       contributors: ["Ole Andre Birkedal"],
       licenses: ["Apache 2.0"],
       links: %{"Github" => "https://github.com/termoose/EasyServer"},
       description: "Easier GenServer for Elixir"
     ]]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end
end
