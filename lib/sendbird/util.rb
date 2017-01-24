module SendBird
  module Util

    def self.object_classes
      @object_classes ||= {
        'SendBird::User' => SendBird::User
      }
    end

    def self.convert_to_sendbird_object(class_name, id, response)
      case response
        when Array
        when Hash
          object_classes.fetch(class_name).initialize_from(id, response)
        else
          response
      end
    end
  end
end