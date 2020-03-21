module CoinAnalyzer
  module Services
    class CoinPaprika
      attr_reader :url, :options

      def initialize(name: nil, symbol: nil)
        @url = "https://api.coinpaprika.com/v1/coins/btc-bitcoin/ohlcv/today"
        @options = {}
      end

      def parsed_response(resp)
        resp[0]&.dig('close')
      end
    end
  end
end
