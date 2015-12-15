class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname, :captcha => true

  def headers
    {
        :subject => "Prośba o kontakt - ktoś ze strony TwojePrzepisy napisał do Ciebie",
        :to => "masterrascal@gmail.com",
        :bcc => "swidzinska.sylwia@gmail.com",
        :from => %("#{name}" <#{email}>)

    }
  end

end
