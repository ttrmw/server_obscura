class PhotoImage < ApplicationRecord
  has_attached_file :main
  validates_attachment_content_type :main, content_type: /\Aimage\/.*\Z/
end
