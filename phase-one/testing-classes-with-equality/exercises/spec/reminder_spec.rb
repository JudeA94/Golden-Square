require 'reminder'
describe Reminder do
    it "reminds the user to do a task" do
        reminder = Reminder.new("Jude")
        reminder.remind_me_to("empty the bin")
        expect(reminder.remind()).to eq "empty the bin, Jude!"
    end
    it "fails" do
      reminder = Reminder.new("Jude")
      expect { reminder.remind() }.to raise_error "No reminder set!"
    end
end