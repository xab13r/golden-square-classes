require 'string_builder'

RSpec.describe StringBuilder do
	it "returns empty string when no string is added" do
		stringbuilder = StringBuilder.new
		result = stringbuilder.output
		expect(result).to eq ""
	end
	
	it "returns a length of 0 for an empty string" do
		stringbuilder = StringBuilder.new
		result = stringbuilder.size
		expect(result).to eq 0
	end
	
	it "returns the correct string when one string added" do
		stringbuilder = StringBuilder.new
		stringbuilder.add("First addition")
		result = stringbuilder.output()
		expect(result).to eq "First addition"
	end
	
	it "returns the length when one string added" do
		stringbuilder = StringBuilder.new
		stringbuilder.add("First addition")
		result = stringbuilder.size
		expect(result).to eq 14
	end
	
	it "returns the correct concatenation of strings" do
		stringbuilder = StringBuilder.new
		stringbuilder.add("First addition - ")
		stringbuilder.add("Second addition - ")
		stringbuilder.add("Third addition")
		result = stringbuilder.output
		expect(result).to eq "First addition - Second addition - Third addition"
	end
	
	it "returns the correct length for a concatenation of strings" do
		stringbuilder = StringBuilder.new
		stringbuilder.add("First addition - ")
		stringbuilder.add("Second addition - ")
		stringbuilder.add("Third addition")
		result = stringbuilder.size
		expect(result).to eq 49
	end
end