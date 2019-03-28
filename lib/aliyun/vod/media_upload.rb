module Aliyun
	module VOD
		module MediaUpload

			class << self

				# https://www.alibabacloud.com/help/zh/doc-detail/86311.htm
				# params: {
				#   :UploadURLs => "http://test.com/video.mp4", # The URL of the video source file. Separate multiple URLs with a comma (,). Encoding: URL encoding.
				#   :TemplateGroupId => nil, # optional, the transcoding template group ID.
				#   :StorageLocation => nil, # optional, the video storage location.
				#   :UploadMetadatas => nil, # optional, not tested
				#   :UserData => {"MessageCallback":"{"CallbackURL":"http://test.test.com"}", "Extend":"{"localId":"xxx", "test":"www"}"} # optional, the custom configurations such as the callback configuration for event notifications. The value is a JSON-formatted string.
				# }
				# returns: {
				#   "RequestId": "25818875-5F78-4A13-BEF6-D7393642CA58",
				#   "UploadJobs": [{
				#     "JobId": "ad90a501b1b94ba6afb72374ad005046",
				#     "SourceURL":"http://xxxxxx.mp4"
				#     }, ...
				#   ]
				# }
				def upload_media_by_url(params)
					params = params.merge({:Action => "UploadMediaByURL"})

					Util.get_response(params)
				end

			end

		end
	end
end