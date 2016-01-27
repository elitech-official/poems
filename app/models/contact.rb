class Contact < MailForm::Base
  
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :nickname,  captcha: true
  attribute :message,   validate: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Сообщение с сайта",
      :to => "mrzff@ya.ru",
      :from => %("#{name}" <#{email}>)
    }
  end
  
end
