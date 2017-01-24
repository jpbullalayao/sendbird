module SendBird
  module APIOperations
    module Create
      def create(params = {}, headers = {})
        JSON.parse(RestClient.post(base_url(params), params.to_json, { content_type: :json, 'Api-Token': SendBird.configuration.api_key }).body)
      end
    end
  end
end
