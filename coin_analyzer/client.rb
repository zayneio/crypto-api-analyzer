require_relative 'constants'
require_relative 'helpers'
require_relative 'request'

module CoinAnalyzer
  class Client
    include CoinAnalyzer::Request

    attr_accessor :sample_size, :delay, :results

    # Set our sample_size and delay values
    def initialize(sample_size=25, delay=30)
      @sample_size = sample_size.to_i
      @delay = delay.to_i

      @results ||= {}
    end

    # Run our test
    def run_test
      initialize_results

      @sample_size.times do
        apis.each do |api|
          name = underscore(api)
          response = self.send("get_#{name}_price".to_sym)

          @results[name.to_sym]&.push(response.to_s) 
        end

        puts "Next check in #{@delay} seconds..."
        sleep(@delay)
      end
    end

    def apis
      Constants::APIS
    end

    # Convert pascal/camel to snek case
    def underscore(name)
      Helpers.underscore(name)
    end

    def initialize_results
      @results = apis.each_with_object({}) do |api, obj| 
        key = underscore(api).to_sym 
        obj[key] = []
      end
    end
  end
end
