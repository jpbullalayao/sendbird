module SendBird
  class Client
    private
      def api_key
        SendBird.configuration.api_key
      end

      def api_url(url)
        "#{url}"
      end
  end
end
