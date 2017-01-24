module SendBird
  class Configuration
    attr_accessor :site, :api_key

    def initialize
      @site    = 'https://api.sendbird.com/v3'
      @api_key = "e9e7a61cc54d280e82b008637084202dcf3905f8"
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end
end
