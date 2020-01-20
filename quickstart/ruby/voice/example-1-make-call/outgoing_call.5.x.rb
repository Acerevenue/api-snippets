require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new(account_sid, auth_token)

call = @client.calls.create(
    to: "+14236470975",
    from: "+18137730213",
    url: "http://demo.twilio.com/docs/voice.xml")
puts call.to
