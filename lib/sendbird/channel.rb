module SendBird
  class Channel < APIResource
    extend SendBird::APIOperations::Create
    extend SendBird::APIOperations::List
    include SendBird::APIOperations::Save
    include SendBird::APIOperations::Delete

    def self.base_url(params = {})
      "#{SendBird.configuration.site}/#{params[:channel_type]}_channels"
    end

    def messages
    end

    private
      def self.convert_to_sendbird_object(response, params = {})
        class_name = params[:channel_type] == 'open' ? 'SendBird::OpenChannel' : 'SendBird::GroupChannel'
        Util.convert_to_sendbird_object(class_name, response, response['channel_url'])
      end
  end
end
