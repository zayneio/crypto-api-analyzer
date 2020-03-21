module CoinAnalyzer
  module Services
    class CoinGecko
      attr_reader :url, :options

      def initialize(name: nil, symbol: nil)
        @url = "https://api.coingecko.com/api/v3/coins/bitcoin"
        @options = {}
      end

      def parsed_response(resp)
        resp&.dig('tickers')&.first&.dig('last')
      end
    end
  end
end