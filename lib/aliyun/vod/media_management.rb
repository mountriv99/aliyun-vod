module Aliyun
	module VOD
		module MediaManagement

			class << self

				# https://www.alibabacloud.com/help/zh/doc-detail/52837.htm
				# params: {
				#   :VideoIds => "12345", # Separated by commas, max 20
				# }
				def delete_video(params)
					params = params.merge({:Action => "DeleteVideo"})

					Util.get_response(params)
				end

			end

		end
	end
end
