defmodule LLVMConfig.MixProject do
  use Mix.Project

  def project do
    [
      app: :llvm_config,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  defp description() do
    "LLVM config wrapper in Elixir."
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/beaver-project/llvm_config"},
      files: ~w{
        lib .formatter.exs mix.exs README*
      }
    ]
  end
end
