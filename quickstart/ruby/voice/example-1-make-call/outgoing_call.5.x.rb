require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACe86be7114c56f5b9a1ba4b0c0d45af5d'
auth_token = '089c699482b903adc7614a0f4b21edc7'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new(account_sid, auth_token)

call = @client.calls.create(
    to: "+15558675310",
    from: "+15017122661",
    url: "http://demo.twilio.com/docs/voice.xml")
puts call.to
