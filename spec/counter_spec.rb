require 'counter'
describe Counter do
  it "initially creates a counter set to zero" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end
  it "will add a positive integer to the initial count when called to once" do
    counter = Counter.new
    counter.add(5)
    expect(counter.report).to eq "Counted to 5 so far."
  end
  it "will subtract a negative integer to the initial count when called to once" do
    counter = Counter.new
    counter.add(-5)
    expect(counter.report).to eq "Counted to -5 so far."
  end
  it "will add a positive integer to the count when called multiple times" do
    counter = Counter.new
    counter.add(5)
    counter.add(6)
    counter.add(7)
    expect(counter.report).to eq "Counted to 18 so far."
  end
  it "will add a positive and subtract integers to the count when called multiple times" do
    counter = Counter.new
    counter.add(5)
    counter.add(-6)
    counter.add(7)
    expect(counter.report).to eq "Counted to 6 so far."
  end
  it "will add a floating numbers to the count when called" do
    counter = Counter.new
    counter.add(5.6)
    expect(counter.report).to eq "Counted to 5.6 so far."
  end
  it "will add and subtract both integers and floating numbers to the count when called multiple times" do
    counter = Counter.new
    counter.add(5)
    counter.add(6.5)
    counter.add(-7.2)
    expect(counter.report).to eq "Counted to 4.3 so far."
  end
  it "will add mathematical constants to the count when asked" do
  counter = Counter.new
  counter.add(Math::PI)
  expect(counter.report).to eq "Counted to 3.141592653589793 so far."
  end
  it "will add and subtract both integers, mathematical constants and floating numbers to the count when called multiple times" do
    counter = Counter.new
    counter.add(5)
    counter.add(6.5)
    counter.add(-7.2)
    counter.add(Math::PI)
    expect(counter.report).to eq "Counted to 7.441592653589793 so far."
  end
end