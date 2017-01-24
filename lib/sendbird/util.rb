module SendBird
  module Util

    def self.object_classes
      @object_classes ||= {
        'SendBird::User' => SendBird::User
      }
    end

    def self.convert_to_sendbird_object(class_name, response, id = nil)
      case response
        when Array
          response.map { |user| object_classes.fetch(class_name).initialize_from(user['user_id'], user) }
        when Hash
          object_classes.fetch(class_name).initialize_from(id, response)
        else
          response
      end
    end
  end
end