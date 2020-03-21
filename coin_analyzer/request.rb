require 'httparty'

require_relative 'helpers'
require_relative 'constants'

Dir[File.dirname(__FILE__) + '/services/*.rb'].each do |file| 
  require_relative file
end

module CoinAnalyzer
  module Request
    Constants::APIS.each do |api|
      klass = Object.const_get("CoinAnalyzer::Services::#{api}").new
      name = Helpers.underscore(api)

      define_method("get_#{name}_price".to_sym) do
        puts "Getting price for #{name}..."
        klass.parsed_response(get(klass.url, klass.options))
      end
    end

    def get(url, options: {})
      HTTParty.get(url, options)
    end
  end
end
