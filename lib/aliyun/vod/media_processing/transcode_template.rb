module Aliyun
	module VOD
		module MediaProcessing
			module TranscodeTemplate

				class << self

					# https://www.alibabacloud.com/help/zh/doc-detail/102665.htm
					# params: {
					#   :Name => "my_template", # optional
					#   :TranscodeTemplateGroupId => nil, # optional
					#   :TranscodeTemplateList => [ # https://help.aliyun.com/document_detail/52839.html#TranscodeTemplate
					#     {"TemplateName": "LD-NBV1", "Definition": "LD-NBV1", "Container": {"Format": "m3u8"}, "MuxConfig": {"Segment": {"Duration": 4}}},
					#     {"TemplateName": "SD-NBV1", "Definition": "SD-NBV1", "Container": {"Format": "m3u8"}, "MuxConfig": {"Segment": {"Duration": 4}}}
					#   ]
					# }
					# returns: {
					#   "RequestId": "25818875-5F78-4A13-BEF6-D7393642CA58",
					#   "TranscodeTemplateGroupId": "34e908aa4024a9ae4df7821c31f93a2a"
					# }
					def add_transcode_template_group(params)
						params = params.merge({:Action => "AddTranscodeTemplateGroup"})
						params[:TranscodeTemplateList] = params[:TranscodeTemplateList].to_json

						Util.get_response(params)
					end

				end

			end
		end
	end
end
