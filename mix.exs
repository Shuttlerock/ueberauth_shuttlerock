defmodule UeberauthShuttlerock.Mixfile do
  use Mix.Project

  @version "0.1.0"
  @url "https://github.com/Shuttlerock/ueberauth_shuttlerock"

  def project do
    [app: :ueberauth_shuttlerock,
     version: @version,
     name: "Ueberauth Shuttlerock Strategy",
     package: package,
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: @url,
     homepage_url: @url,
     description: description,
     deps: deps,
     docs: docs]
  end

  def application do
    [applications: [:logger, :oauth2, :ueberauth]]
  end

  defp deps do
    [{:ueberauth, "~> 0.2"},
     {:oauth2, "~> 0.5"},
     {:ex_doc, "~> 0.1", only: :dev},
     {:earmark, ">= 0.0.0", only: :dev},
     {:dogma, ">= 0.0.0", only: [:dev, :test]}]
  end

  defp docs do
    [extras: docs_extras, main: "extra-readme"]
  end

  defp docs_extras do
    ["README.md"]
  end

  defp description do
    "An Uberauth strategy for Shuttlerock authentication."
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Vokhmin Aleksei"],
      licenses: ["MIT"],
      links: %{"GitHub": @url}]
  end
end
