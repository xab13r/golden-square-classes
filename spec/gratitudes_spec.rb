require "gratitudes"

RSpec.describe Gratitudes do
	it "returns correct string on empyt value" do
		gratitudes = Gratitudes.new
		result = gratitudes.format
		expect(result).to eq "Be grateful for: "
	end
	
	it "returns correct string with one addition" do
		gratitudes = Gratitudes.new
		gratitudes.add("Health")
		result = gratitudes.format
		expect(result).to eq "Be grateful for: Health"
	end
	
	it "returns correct string with multiple additions" do
		gratitudes = Gratitudes.new
		gratitudes.add("Health")
		gratitudes.add("Family")
		gratitudes.add("Nature")
		result = gratitudes.format
		expect(result).to eq "Be grateful for: Health, Family, Nature"
	end

end