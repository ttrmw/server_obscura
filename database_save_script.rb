images = []

s_o.objects(prefix: 'AFRICA/BOTSWANA').each do |obj| 

new_image = File.open('filename', 'wb') do |file|
  resp = s3.get_object({ bucket:'bucket-name', key:'object-key' }, target: file)
end

images.push new_image


# set up s3 and s3_res objects first with credentials

s3 = Aws::S3::Client.new(
  credentials: Aws::Credentials.new('AKIAJHCSITJ7NNK5T5BQ', 'ScJHZdOy6fp0kEsyY2flXSFEt7vtcJNH0mkrByNg'),
  region: 'eu-west-1'
)

s3_res = Aws::S3::Resource.new(
  credentials: Aws::Credentials.new('AKIAJHCSITJ7NNK5T5BQ', 'ScJHZdOy6fp0kEsyY2flXSFEt7vtcJNH0mkrByNg'),
  region: 'eu-west-1'
)

images = {}
file_images = {}

s3_res.bucket('server-obscura-complete').objects(prefix: 'AFRICA/BOTSWANA').each do |obj|
	File.open('filename', 'wb') do |file|
		resp = s3.get_object({bucket:'server-obscura-complete', key: obj.key}, target: file)
		new_photo_image = PhotoImage.new
		new_photo_image.metadata = obj.key.to_s
		new_photo_image.main = file
		new_photo_image.save
		puts "saved:"
		puts new_photo_image.inspect
	end
end

s3_res.bucket('server-obscura-complete').objects(prefix: 'AFRICA/BOTSWANA').each do |obj| 


	.bucket('server-obscura-complete').objects(prefix: 'AFRICA/BOTSWANA').bucket('server-obscura-complete').objects(prefix: 'AFRICA/BOTSWANA')


obj = s3.get_object({bucket: 'server-obscura-complete', key: 'AFRICA/BOTSWANA/BAINES CAMP OKAVANGO BOTSWANA     YC1J6705.jpg'})

resp = s3.get_object({bucket:'server-obscura-complete', key: "AFRICA/BOTSWANA/BAINES CAMP OKAVANGO BOTSWANA     YC1J6705.jpg"}, target: file)