require 'string_repeater'

describe StringRepeater do
  it 'repeats a given string a given number of times' do
    fake_terminal = double :terminal
    expect(fake_terminal).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string").ordered
    expect(fake_terminal).to receive(:gets).and_return("TWIX").ordered
    expect(fake_terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(fake_terminal).to receive(:gets).and_return("10").ordered
    expect(fake_terminal).to receive(:puts).with("Here is your result:").ordered
    expect(fake_terminal).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered
    string_repeater = StringRepeater.new(fake_terminal)
    string_repeater.run
  end
end

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX