module SendBird
  class Channel < APIResource
    extend SendBird::APIOperations::Create
    extend SendBird::APIOperations::List
    include SendBird::APIOperations::Save
    include SendBird::APIOperations::Delete

    def self.base_url(params = {})
      "#{SendBird.configuration.site}/group_channels"
    end

    def messages
    end

  end
end
