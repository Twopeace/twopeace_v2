class Contact < MailForm::Base
  attribute :name,          :validate => true
  attribute :phone_number,  :validate => /\A\d{3}-\d{3}-\d{4}\z/ 
  attribute :email,         :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,       :validate => true
  attribute :nickname,      :captcha => true

  def headers
    {
      :subject =>"Twopeace Contact Form",
      :to => "scot.c.chard@gmail.com",
      :from => %("#{name}" <#{email}> <#{phone_number}>)
    }
  end
end 