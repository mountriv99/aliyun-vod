require 'net/https'
require 'uri'
require 'json'
Dir[File.join(__dir__, 'vod', '*.rb')].each { |file| require_relative file }

# https://help.aliyun.com/document_detail/44432.html
module Aliyun
	module VOD
		class << self

			attr_accessor :access_key_id, :access_key_secret, :region, :debug

			def base_url
				"https://vod.cn-shanghai.aliyuncs.com"
			end

		end
	end
end
