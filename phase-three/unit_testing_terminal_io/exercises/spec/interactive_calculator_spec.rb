require 'interactive_calculator'

describe InteractiveCalculator do
  it 'greets the user and subtracts two numbers from the terminal' do
    io = double :io
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.\nPlease enter a number").ordered
    expect(io).to receive(:gets).and_return("4").ordered
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return("3").ordered
    expect(io).to receive(:puts).with("Here is your result:\n4 - 3 = 1").ordered
    interactive_calculator = InteractiveCalculator.new(io)
    interactive_calculator.run
  end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# # Hello. I will subtract two numbers.
# # Please enter a number
# # 4
# # Please enter another number
# # 3
# # Here is your result:
# # 4 - 3 = 1
