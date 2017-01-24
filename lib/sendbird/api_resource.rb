module SendBird
  class APIResource < SendBirdObject
    include SendBird::APIOperations::Request

    def resource_url
      id = self['id']
      "#{self.class.base_url}/#{id}"
    end

    def self.retrieve(id)
      resource = self.new(id)
      resource.refresh
      resource
    end

    def refresh
      response = self.request(:get, resource_url)
      initialize_from(response)
    end
  end
end
