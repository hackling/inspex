defmodule Inspex do
  import IEx.Info

  def type(arg) do
    IEx.Info.info(arg) |> List.last |> elem(1)
  end

  def source(module) do
    module.__info__(:compile) |> List.last |> elem(1)
  end

  def definition(module) do
    module |> source |> File.read |> elem(1) |> IO.puts
  end

  def functions(module) do
    module.__info__(:functions)
  end
end
