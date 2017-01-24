module SendBird
  class Configuration
    attr_accessor :site, :api_key

    def initialize
      @site = "https://api.sendbird.com/v3"
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end
end
