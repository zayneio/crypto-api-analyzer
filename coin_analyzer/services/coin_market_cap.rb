# module CoinAnalyzer
#   module Services
#     class CoinMarketCap
#       attr_reader :url, :options

#       def initialize(name: nil, symbol: nil)
#         @url = "https://api.coinmarketcap.com/v1/ticker/btc"
#         @options = {}
#       end

#       def parsed_response(resp)
#         resp
#       end
#     end
#   end
# end