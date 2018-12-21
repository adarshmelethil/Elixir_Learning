defmodule CowStuff do
	def get_name do
		IO.gets("name?")
		|> String.trim()
	end

	def cow_art do
		path = Path.expand("assets/cow.txt", __DIR__)

		case File.read(path) do
			{:ok, art} ->
				art

			{:error, _} ->
				IO.puts("Error: cow not found")
				System.halt(1)
		end
	end

	def get_n_input do
		IO.getn("Cow art? [y|n]", 1)
	end

	def ask do 
		name = get_name()
		case String.downcase(get_n_input()) do
			"y" ->
				IO.puts "Great! #{name}"
				IO.puts cow_art()
			"n" ->
				IO.puts "ok #{name}"
			_ ->
				IO.puts "Invalid answer"
		end
	end
end

ExUnit.start 

defmodule InputOutputTest do
	use ExUnit.Case
	import String

	test "check cow" do
		art = CowStuff.cow_art
		assert trim(art)
		|> first == "("
	end
end

CowStuff.ask