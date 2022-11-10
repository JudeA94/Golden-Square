# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

check_todo(text)

check_todo(string) checks wether "#TODO" is in the string that it is given

checked = check_todo(string)

string: a string (e.g. "hello WORLD")
checked: a boolean (e.g. false)
The method doesn't print anything or have any other side-effects

## 3. Create Examples as Tests

check_todo("") => false
check_todo("hello WORLD") => false
check_todo("i need todo something") => false
check_todo("i need to #todo something") => false
check_todo("#TODO take out the bins") => true
check_todo("go for a run #TODO") => true
check_todo("making lunch is a #TODO of mine!") => true
check_todo([1,2,3]) throws an error "This isn't something I can check!"

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
