module Aliyun
	module VOD
		module AudioAndVideoPlayback

			class << self

				# https://help.aliyun.com/document_detail/56124.html
				# params: {
				#   :VideoId => "example-id",
				#   :Formats => "mp4, m3u8, mp3, mpd", # optional
				#   :AuthTimeout => nil, # optional, not tested
				#   :StreamType => nil, # optional, not tested
				#   :Definition => nil, # optional, not tested
				#   :ResultType => nil, # optional, not tested
				#   :OutputType => nil, # optional, not tested
				#   :PlayConfig => nil, # optional, not tested
				#   :ReAuthInfo => nil # optional, not tested
				# }
				def get_play_info(params)
					params = params.merge({:Action => "GetPlayInfo"})

					Util.get_response(params)
				end

				# https://help.aliyun.com/document_detail/52833.html
				# params: {
				#   :VideoId => "example-id",
				#   :AuthInfoTimeout => nil, # optional
				#   :PlayConfig => nil, # optional, not tested
				#   :ReAuthInfo => nil # optional, not tested
				# }
				# returns: {
			    #   "RequestId": "25818875-5F78-4A13-BEF6-D7393642CA58",
			    #   "VideoMeta": {
			    #     "VideoId": "93ab850b4f6f44eab54b6e91d24d81d4",
			    #     "Title": "阿里云VOD",
			    #     "Duration": 135.6,
			    #     "CoverURL": "https://image.example.com/sample.jpg",
			    #     "Status": "Normal"
			    #   },
			    #   "PlayAuth": "sstyYuew678999ew90000000xtt7TYUh"
			    # }
				def get_video_play_auth(params)
					params = params.merge({:Action => "GetVideoPlayAuth"})

					Util.get_response(params)
				end

			end

		end
	end
end
