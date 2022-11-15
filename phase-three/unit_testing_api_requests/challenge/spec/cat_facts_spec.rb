require 'cat_facts'

describe CatFacts do
  it "returns a random cat fact in the required format" do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"A cat usually has about 12 whiskers on each side of its face.","length":61}')
    fact = CatFacts.new(fake_requester)
    expect(fact.provide).to eq 'Cat fact: A cat usually has about 12 whiskers on each side of its face.'
  end
end