class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname, :caotcha => true

  def headers
    {
        :subject => "Posba o kontakt",
        :to => "masterrascal@gmail.com",
        :from => %("#{name}" <#{email}>)

    }
  end

end
