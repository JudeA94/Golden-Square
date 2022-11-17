require 'text'

describe Text do
  it 'texts a confirmation message when requested' do
    fake_twilio_requester = double :twilio_requester
    expect(fake_twilio_requester).to receive(:new).with(@account_sid, @auth_token)
    text = Text.new(fake_twilio_requester)
    text.send()
  end
end






# xit 'texts a confirmation message when requested' do
#   TwilioMock::Testing.disable! do
#     mocker = TwilioMock::Mocker.new
#     mocker.available_number(my_number)
#     number = account.available_phone_numbers.get('US').local.list.first.phone_number
#     my_number == number # true
#     attrs = {
#       phone_number: my_number,
#       sms_url: 'my sms callback',
#       sms_method: 'POST'
#     }
#     mocker.buy_number(attrs)

#     account.incoming_phone_numbers.create(
#       phone_number: phone_number,
#       sms_url: sms_url,
#       sms_method: 'POST'
#     )
#   end
#   TwilioMock::Testing.disable!
#   mocker = TwilioMock::Mocker.new
#   attrs = {
#     from: 'from_number',
#     to: 'to_number',
#     body: 'text message'
#   }
#   mocker.create_message(attrs)
#   account.messages.create(attrs)
#   mocker.messages.last # here is your message sent
#   TwilioMock::Testing.enable!
# end