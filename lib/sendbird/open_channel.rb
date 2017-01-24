module SendBird
  class OpenChannel < Channel

    def self.base_url(params = {})
      "#{SendBird.configuration.site}/open_channels"
    end

    def participants
    end

    def freeze
    end

    def ban_list
    end

    def ban_update
    end

    def ban_delete
    end

    def ban_view
    end

    def mute
    end

    def mute_list
    end

    def mute_delete
    end

    def mute_view
    end
  end
end