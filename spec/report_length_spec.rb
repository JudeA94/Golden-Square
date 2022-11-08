require 'report_length'
describe "report_length method" do
  it "returns the length of 0 when empty string given" do
    expect(report_length("")).to eq "This string was 0 characters long"
  end
  it "returns the length of 0 when new string is creqted in the method" do
    expect(report_length(String.new)).to eq "This string was 0 characters long"
  end
  it "returns the length of single word when single word is given" do
    expect(report_length("pizza")).to eq "This string was 5 characters long"
  end
  it "returns the length of all words and spaces when given" do
    expect(report_length("hello world")).to eq "This string was 11 characters long"
  end
  it "returns the length of all characters and spaces including letters, numbers and special characters given" do
    expect(report_length("1234$$ %^&* sudihk . disuhfi")).to eq "This string was 28 characters long"
  end
  it "returns the length of all characters and spaces including letters, numbers and special characters and new lines when given" do
    expect(report_length("1234$$ hello\nworld!")).to eq "This string was 19 characters long"
  end
end
