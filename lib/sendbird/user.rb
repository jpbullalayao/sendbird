module SendBird
  class User < APIResource
    extend SendBird::APIOperations::Create
    # extend SendBird::APIOperations::List
    include SendBird::APIOperations::Save
    include SendBird::APIOperations::Delete

    def self.base_url(params = {})
      "#{SendBird.configuration.site}/users"
    end

    def self.list(params = {})
      response = JSON.parse(RestClient.get(base_url, { content_type: :json, 'Api-Token': SendBird.configuration.api_key }).body)
      convert_to_sendbird_object(response['users'])
    end

    def open_channels
    end

    def group_channels
    end

    def total_unread_count
      # resource_url = "#{SendBird.configuration.site}/users/+15005550006/unread_count"
      #
      # JSON.parse(RestClient.get(resource_url, { content_type: :json, 'Api-Token': SendBird.configuration.api_key }).body)
    end

    def self.block
    end

    def self.block_list
    end

    # TODO: DELETE BLOCK

    def ban_list
    end

    def mute_list
    end

    def mark_all_as_read
    end

    def register_token
    end

    def unregister_token
    end

    def push_preference
    end

    def update_push_preference
    end

    def delete_push_preference
    end

    def channel_push_preference
    end

    def update_channel_push_preference
    end

    private

      def self.convert_to_sendbird_object(response, user_id = nil)
        Util.convert_to_sendbird_object('SendBird::User', response, user_id)
      end
  end
end
