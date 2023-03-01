module Podio
  module Middleware
    class RateLimit < Faraday::Middleware

      def initialize(app, options = {})
        super(app)
        @podio_client = options[:podio_client]
      end

      # This method will be called when the response is being processed.
      # You can alter it as you like, accessing things like response_body, response_headers, and more.
      # Refer to Faraday::Env for a list of accessible fields:
      # https://github.com/lostisland/faraday/blob/main/lib/faraday/options/env.rb
      #
      # @param env [Faraday::Env] the environment of the response being processed.
      def on_complete(env)
        @podio_client.rate_limit = env[:response_headers]['X-Rate-Limit-Limit']
        @podio_client.rate_remaining = env[:response_headers]['X-Rate-Limit-Remaining']
      end
    end
  end
end

