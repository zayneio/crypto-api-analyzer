require_relative 'coin_analyzer/client'

module CoinAnalyzer
  class << self
    def new(sample_size, delay)
      @client ||= CoinAnalyzer::Client.new(sample_size, delay)
    end
  end
end
