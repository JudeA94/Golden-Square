# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

check_grammar checks the string given begins with a capital letter and ends with a . ? or !

grammar_checked = check_grammar(sentence)

sentence: a string (e.g. "hello WORLD")
grammar_checked: a a boolean (e.g. false)

# The method doesn't print anything or have any other side-effects

check_grammar("hello WORLD") => false
check_grammar("Hello world") => false
check_grammar("hello world!") => false
check_grammar("Hello world!") => true
check_grammar("Is the world saying hello?") => true
check_grammar("") => throws an error "That's not a sentence!"
check_grammar(nil) throws an error "That's not a sentence!"

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._