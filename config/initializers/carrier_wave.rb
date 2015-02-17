if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {

		#configuration for amazon s3
		:provider => 'AWS',
		:aws_access_key_id => ENV['AKIAJWKDZWZYIDKD5LYQ'],
		:aws_secret_access_key => ENV['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']
		}
		config.fog_directory = ENV['weijiesampleapp']
	end
end