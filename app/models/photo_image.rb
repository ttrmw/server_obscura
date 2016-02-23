class PhotoImage < ApplicationRecord
  has_attached_file :main,
  					:storage => :s3,
  					:s3_credentials => Proc.new{ |a| a.instance.s3_credentials }
  validates_attachment_content_type :main, content_type: /\Aimage\/.*\Z/

  def s3_credentials
    {
      bucket: "photo-image-collection",
      access_key_id: Rails.application.secrets.s3_access_key,
      secret_access_key: Rails.application.secrets.s3_secret_key
    }
  end
end
