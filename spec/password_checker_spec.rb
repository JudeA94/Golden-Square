require 'password_checker'
describe PasswordChecker do
  it "if a password is set too short it raises an error with message" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("password")).to eq true
  end
  it "if a valid password is set it returns true" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("1234") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
