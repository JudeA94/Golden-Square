require 'check_codeword'
describe "check_codeword method" do
  it "returns incorrect message when given a wrong codeword" do
    expect(check_codeword("shoelace")).to eq "WRONG!"
  end
  it "returns a correct enter messsage when the codeword is entered" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end
  it "returns a close message if the codeword has the right first and last characters" do
    expect(check_codeword("house")).to eq "Close, but nope."
  end
  it "still returns incorrect message for edge cases, e.g. first letter correct and last incorrect" do
    expect(check_codeword("hamster")).to eq "WRONG!"
  end
  it "still returns incorrect message for edge cases, e.g. last letter correct and first incorrect" do
    expect(check_codeword("badge")).to eq "WRONG!"
  end
end

