module SendBird
  class GroupChannel < Channel

    def self.base_url(params = {})
      "#{SendBird.configuration.site}/group_channels"
    end

    def members
    end

    def check_member
    end

    def invite
    end

    def hide
    end

    def leave
    end
  end
end
