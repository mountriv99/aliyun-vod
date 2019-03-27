module Aliyun
	module VOD
		module AudioAndVideoPlayback

			class << self

				# https://help.aliyun.com/document_detail/56124.html
				# params: {
				#   :VideoId => "example-id",
				#   :Formats => "mp4, m3u8, mp3, mpd", # optional
				#   :AuthTimeout => nil, # optional
				#   :StreamType => nil, # optional
				#   :Definition => nil, # optional
				#   :ResultType => nil, # optional
				#   :OutputType => nil, # optional
				#   :PlayConfig => nil, # optional
				#   :ReAuthInfo => nil # optional
				# }
				def get_play_info(params)
					params = params.merge({:Action => "GetPlayInfo"})

					Util.get_response(params)
				end

			end

		end
	end
end
