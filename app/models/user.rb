class User < ActiveRecord::Base
  has_secure_password

  def editor?
    self.editor == 'yes'
  end

  def admin?
    self.admin == 'yes'
  end
end
