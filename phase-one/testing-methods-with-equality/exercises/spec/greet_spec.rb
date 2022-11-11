require 'greet'
describe "greet method" do
  it "greets some one called Jude by returning 'Hello, Jude!'" do
    name = 'Jude'
    expect(greet(name)).to eq "Hello, Jude!"
  end
end
