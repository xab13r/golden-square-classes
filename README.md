# The Golden Square Challenges - Testing Classes with Equality

## Testing Classes

Example Class:
```
# File: lib/reminder.rb
class Reminder
  def initialize(name)
    @name = name
  end

  def remind_me_to(task)
    @task = task
  end

  def remind()
    return "#{@task}, #{@name}!"
  end
end
```

Example test for the class:
```
# File: spec/reminder_spec.rb

require 'reminder'

# We use the class name here rather than a string
RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kay")
    reminder.remind_me_to("Walk the dog")
    result = reminder.remind()
    expect(result).to eq "Walk the dog, Kay!"
  end

  # We would typically have a number of these examples.
end
```

## Exercises

Write tests for the following methods

```
# File: lib/greet.rb

def greet(name)
  return "Hello, #{name}!"
end
```

```
# File: lib/check_codeword.rb

def check_codeword(codeword)
  if codeword == "horse"
	return "Correct! Come in."
  elsif codeword.chars.first == "h" && codeword.chars.last == "e"
	return "Close, but nope."
  else
	return "WRONG!"
  end
end
```

```
# File: lib/report_length.rb

def report_length(str)
  length = str.length
  return "This string was #{length} characters long."
end
```