class HomeController < ApplicationController
  def home
    mg_client = Mailgun::Client.new 'key-37da36884b26bd3e362eaafccf989eb8'

    message_params = {from:    'Mailgun Sandbox <postmaster@sandboxd7bc03e1757d4439ab1805e09a6e8bf7.mailgun.org>',
                      to:      'Kelton Manzanares <kelton.manzanares@gmail.com>',
                      subject: 'The Ruby SDK is awesome!',
                      text:    'It is really easy to send a message!'}

    mg_client.send_message 'sandboxd7bc03e1757d4439ab1805e09a6e8bf7.mailgun.org', message_params
  end
end
