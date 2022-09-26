require 'reminder'

# User class name here rather than a string
RSpec.describe Reminder do
	it "remindes the user to do a task" do
		reminder = Reminder.new("Kay")
		reminder.remind_me_to("Walk the dog")
		result = reminder.remind()
		expect(result).to eq "Walk the dog, Kay!"
	end
end