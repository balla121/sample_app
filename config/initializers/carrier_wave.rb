if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {

		#configuration for amazon s3
		:provider => 'AWS',
		:aws_access_key_id => ENV['S3_Access_KEY'],
		:aws_secret_access_key => EnV['S3_SECRET_KEY']
		}
		config.fog_directory = ENV['S3_BUCKET']
	end
end