module CoinAnalyzer
  module Services
    class CryptoCompare
      attr_reader :url, :options

      def initialize(name: nil, symbol: nil)
        @url = "https://min-api.cryptocompare.com/data/price?fsym=btc&tsyms=USD"
        @options = {}
      end

      def parsed_response(resp)
        resp&.dig('USD')
      end
    end
  end
end
