module Aliyun
	module VOD
		module MediaUpload

			class << self

				# https://www.alibabacloud.com/help/zh/doc-detail/86311.htm
				# params: {
				#   :UploadURLs => "http://test.com/video.mp4", # The URL of the video source file. Separate multiple URLs with a comma (,). Encoding: URL encoding.
				#   :TemplateGroupId => nil, # optional, the transcoding template group ID.
				#   :StorageLocation => nil, # optional, the video storage location.
				#   :UploadMetadatas => [{ # optional
				#     :SourceURL => "http://test.com/video.mp4",
				#     :Title => "Video Title",
				#     :CateId => '12345' # optional
				#   }],
				#   :UserData => { # optional, the custom configurations such as the callback configuration for event notifications. The value is a JSON-formatted string.
				#     "MessageCallback": {"CallbackURL":"http://test.test.com"}.to_json,
				#     "Extend": {"localId":"xxx", "test":"www"}.to_json
				#   }
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
					params[:UploadMetadatas] = params[:UploadMetadatas].to_json
					params[:UserData] = params[:UserData].to_json

					Util.get_response(params)
				end

				# https://help.aliyun.com/document_detail/106830.html
				# params: {
				#   :JobIds => "12345" # separate by commas, max 10
				# }
				# returns: {
				#   "RequestId": "25818875-5F78-4A13-BEF6-D7393642CA58",
				#     "URLUploadInfoList" :[{
				#       "JobId":"xxxxxxx",
				#       "UploadURL" : "http://xxx",
				#       "MediaId" : "xxxxx",
				#       "Status": "SUCCESS",
				#       "CreationTime" : "2019-01-01T01:01:01Z",
				#       "CompleteTime": "2019-01-01T01:05:01Z",
				#       "UserData": "xxxx"
				#     }, {
				#       "JobId":"xxxxxxx",
				#       "UploadURL" : "http://xxxx",
				#       "Status": "PENDING",
				#       "CreationTime" : "2019-01-01T01:01:01Z",
				#       "CompleteTime": "2019-01-01T01:05:01Z",
				#       "UserData": "xxxx"
				#     }, {
				#       "JobId":"xxxxxxx",
				#       "UploadURL" : "http://xxxx",
				#       "Status": "UPLOAD_FAIL",
				#       "CreationTime" : "2019-01-01T01:01:01Z",
				#       "CompleteTime": "2019-01-01T01:05:01Z",
				#       "UserData": "xxxx",
				#       "ErrorCode":"",
				#       "ErrorMessage":""
				#       }, ...],
				#   "NonExists": ["XXXX1", "XXX2"]
				# }
				def get_url_upload_infos(params)
					params = params.merge({:Action => "GetURLUploadInfos"})

					Util.get_response(params)
				end

			end

		end
	end
end
