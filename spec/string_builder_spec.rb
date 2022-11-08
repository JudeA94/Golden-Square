require 'string_builder'
describe StringBuilder do
  it "initially creates an empty string" do
    string = StringBuilder.new
    expect(string.output).to eq ""
  end
  it "initially creates a string of length 0" do
    string = StringBuilder.new
    expect(string.size).to eq 0
  end
  it "allows you to add a single string and outputs it" do
    string = StringBuilder.new
    string.add("Hello")
    expect(string.output).to eq "Hello"
  end
  it "allows you to add a single string and can check it's length" do
    string = StringBuilder.new
    string.add("Hello")
    expect(string.size).to eq 5
  end
  it "allows you to add a multiple strings and outputs them" do
    string = StringBuilder.new
    string.add("Hello")
    string.add("World")
    expect(string.output).to eq "HelloWorld"
  end
  it "allows you to add a single string and can check it's length" do
    string = StringBuilder.new
    string.add("Hello")
    string.add("World")
    expect(string.size).to eq 10
  end
end