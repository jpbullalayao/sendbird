module SendBird
  module APIOperations
    module Save
      def save
        values   = self.serialize_params
        response = request(:put, resource_url, values)

        initialize_from(response)
        self
      end
    end
  end
end
