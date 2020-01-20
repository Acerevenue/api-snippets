require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/console
account_sid = '5131563151313515151361515131'
auth_token = '1511651515131356464513'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new(account_sid, auth_token)

call = @client.calls.create(
    to: "+15558675310",
    from: "+15017122661",
    url: "http://demo.twilio.com/docs/voice.xml")
puts call.to
