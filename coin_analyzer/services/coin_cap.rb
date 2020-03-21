module CoinAnalyzer
  module Services
    class CoinCap
      attr_reader :url, :options

      def initialize(name: nil, symbol: nil)
        @url = "https://api.coincap.io/v2/assets/bitcoin"
        @options = {}
      end

      def parsed_response(resp)
        resp&.dig('data', 'priceUsd')
      end
    end
  end
end