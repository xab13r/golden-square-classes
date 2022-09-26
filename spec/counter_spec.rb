require 'counter'

# User class name here rather than a string
RSpec.describe Counter do
	it "reports a count of zero with no addition" do
		counter = Counter.new
		result = counter.report()
		expect(result).to eq "Counted to 0 so far."
	end
	
	it "reports a count of added value with one addition" do
		counter = Counter.new
		counter.add(5)
		result = counter.report()
		expect(result).to eq "Counted to 5 so far."
	end
	
	it "reports a count of added values with multiple additons" do
		counter = Counter.new
		counter.add(10)
		counter.add(5)
		counter.add(7)
		result = counter.report()
		expect(result).to eq "Counted to 22 so far."
	end
end