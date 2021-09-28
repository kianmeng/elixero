defmodule XeroXero.Mixfile do
  use Mix.Project

  @source_url "https://github.com/etehtsea/elixero"
  @version "0.5.0"

  def project do
    [
      app: :xeroxero,
      version: @version,
      elixir: "~> 1.3",
      package: package(),
      deps: deps(),
      docs: docs()
    ]
  end

  def application do
    [
      applications: [:logger, :httpoison, :jason]
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.1"},
      {:httpoison, "~> 1.2"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:ecto, "~> 2.1 or ~> 3.0"}
    ]
  end

  defp package do
    [
      description: "Xero API Elixir SDK",
      maintainers: ["MJMortimer"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      extras: [
        "LICENSE.md": [title: "License"],
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      formatters: ["html"]
    ]
  end
end
