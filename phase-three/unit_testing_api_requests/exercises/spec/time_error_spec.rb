require 'time_error'

describe TimeError do
  it "gives the difference in time from server to home computer" do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"2a00:23c4:2d8a:2301:ed35:d9bd:67ee:5328","datetime":"2022-11-15T12:15:59.039325+00:00","day_of_week":2,"day_of_year":319,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1668514559,"utc_datetime":"2022-11-15T12:15:59.039325+00:00","utc_offset":"+00:00","week_number":46}')
    time_error = TimeError.new(fake_requester)
    time = Time.new(2022, 11, 15, 12, 15, 00)
    expect(time_error.error(time)).to eq 59.039325
  end
end