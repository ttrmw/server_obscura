class PhotoImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :metadata, :main_file_name, :main_content_type, :main_file_size, 

  def url
    object.main.url.gsub(/s3/, 's3-eu-west-1')
  end
end
