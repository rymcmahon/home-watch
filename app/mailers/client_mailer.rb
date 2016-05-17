class ClientMailer < ApplicationMailer
  default from: "sandbox62112cf2ad9b47318b9a58c8c301d2c9.mailgun.org"

  def welcome_email(client)
    @client = client
    mail(to: @client.email_one, subject: "Welcome to John's Home Watch", reply_to: 'magsups2002@yahoo.com')
  end
end
