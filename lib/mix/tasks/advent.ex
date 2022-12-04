defmodule Mix.Tasks.Advent do
  use Mix.Task

  def run([year, day]) do
    mod = [
      "AdventOfCode",
      "Year#{year}",
      "Day#{day}"
    ] |> Module.safe_concat()

    input_dir =
      Path.join([
        :code.priv_dir(:advent_of_code),
        year,
        day
      ])

    input_files =
      input_dir
      |> Path.join("*.*")
      |> Path.wildcard()

    input =
      input_files
      |> Enum.map(&File.read!/1)
      # AdventOfCode.Day.result/1 currently only accepts a single input
      |> List.first()

    IO.inspect mod.result(input)
  end
end
