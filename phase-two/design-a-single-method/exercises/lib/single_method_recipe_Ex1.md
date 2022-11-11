# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

read_time estimates how long it will take to read a piece of text
estimates time = read_time(text)
text = a string containing the text to be read
read_time = the approximate time it would take to read if being read at 200 words per minute. (in minutes and seconds) 
The method doesn't print anything or have any other side-effects


## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

read_time("...string containing 200 words...") => "1 minute 0 seconds"
read_time("...string containing 100 words...") => "0 minutes 30 seconds"
read_time("...string containing 300 words...") => "1 minute 30 seconds"
read_time("") => "0 minutes 0 seconds"
read_time("") => []
read_time(nil) throws an error "You don't really read that!"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

