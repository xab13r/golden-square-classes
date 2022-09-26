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

Write tests for the following classes

```
# File: lib/counter.rb

class Counter
  def initialize
    @count = 0
  end

  def add(num)
    @count += num
  end

  def report
    return "Counted to #{@count} so far."
  end
end
```

```
# File: lib/string_builder.rb

class StringBuilder
  def initialize
    @str = ""
  end

  def add(str)
    @str += str
  end

  def size
    return @str.length
  end

  def output
    return @str
  end
end
```

```
# File: lib/gratitudes.rb

class Gratitudes
  def initialize
    @gratitudes = []
  end

  def add(gratitude)
    @gratitudes.push(gratitude)
  end

  def format
    formatted = "Be grateful for: "
    formatted += @gratitudes.join(", ")
  end
end
```