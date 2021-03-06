class ClientMailer < ApplicationMailer
  default from: "john@johnshomewatch.com"

  def welcome_email(client)
    @client = client
    mail(to: @client.email_one, subject: "Welcome to John's Home Watch", reply_to: 'magsups2002@yahoo.com', bcc: 'magsups2002@yahoo.com')
  end

  def inspection_email(client, inspection)
    @client = client
    @inspection = inspection
    mail(to: @client.email_one, subject: "Home Inspection Report", reply_to: 'magsups2002@yahoo.com', bcc: 'magsups2002@yahoo.com')
  end
end
