module SendBird
  class Message < APIResource
    extend SendBird::APIOperations::Create
    include SendBird::APIOperations::Delete

    def self.base_url(params = {})
      "#{SendBird.configuration.site}/#{params[:channel_type]}/#{params[:channel_url]}/messages"
    end

    def mark_as_read
    end
  end
end
