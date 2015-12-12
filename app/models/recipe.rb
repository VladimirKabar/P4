class Recipe < ActiveRecord::Base
  belongs_to :cuisine
  validates_presence_of :name, :ingredients, :instructions
  has_attached_file :image, :styles => {:small => '1366x768>'}
=begin
                    :url => '/assets/products/:id/:style/:basename.:extension',

                    # :path => ':rails_root/public/assets/products/:id/:style/:basename.:extension'

                    :storage => :s3,
                    :s3_credentials => { :access_key_id => AppConfig['s3']['access_id'], :secret_access_key => AppConfig['s3']['secret_key'] },
                    :path => ': attachment/:id/:style.:extension',
                    :bucket => 'vladimirbucket's
=end

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image,
                                    :content_type => /^image\/(png|gif|jpeg)/
end
