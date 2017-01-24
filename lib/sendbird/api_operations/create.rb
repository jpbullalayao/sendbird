module SendBird
  module APIOperations
    module Create
      def create(params = {}, headers = {})
        response = JSON.parse(RestClient.post(base_url(params), params.to_json, { content_type: :json, 'Api-Token': SendBird.configuration.api_key }).body)
        convert_to_sendbird_object(response)
      end
    end
  end
end
