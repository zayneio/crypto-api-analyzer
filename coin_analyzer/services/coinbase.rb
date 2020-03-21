module CoinAnalyzer
  module Services
    class Coinbase
      attr_reader :url, :options

      def initialize(name: nil, symbol: nil)
        @url = "https://api.coinbase.com/v2/prices/btc-usd/spot"
        @options = {}
      end

      def parsed_response(resp)
        resp&.dig('data', 'amount')
      end
    end
  end
end
