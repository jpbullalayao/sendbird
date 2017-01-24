module SendBird
  module APIOperations
    module Request
      def self.request(http_method, resource_url, params = {})
        # JSON.parse(RestClient.post(base_url(params), params.to_json, { content_type: :json, 'Api-Token': SendBird.configuration.api_key }).body)
      end

      def request(http_method, resource_url, params = {})
        headers  = { content_type: :json, 'Api-Token': SendBird.configuration.api_key }
        response = nil

        case http_method
          when :get
            response = JSON.parse(RestClient.get(resource_url, headers).body)
          when :put
            response = JSON.parse(RestClient.put(resource_url, params.to_json, headers).body)
        end

        response
      end
    end
  end
end
