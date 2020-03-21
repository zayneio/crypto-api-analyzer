require './coin_analyzer'

# Number of results we want for each api
sample_size = 10
# Number of seconds we want to delay between each result
delay = 30
# Initialize a new instance of CoinAnalyzer
coin_analyzer = CoinAnalyzer.new(sample_size, delay)
# Run the comparison test
coin_analyzer.run_test
# Display the results of our test
puts coin_analyzer.results
# {
#   :coinbase=>["6233.195", "6235.005", "6231.355", "6228.885", "6237.41", "6246.43", "6239.18", "6241.665", "6234.595", "6232.825"],
#   :coin_cap=>["6230.21","6230.94","6231.027","6230.83","6232.93","6236.26","6238.30","6240.968","6241.29","6238.34"],
#   :coin_gecko=>["6195.0", "6195.0", "6195.0", "6195.0", "6195.0", "6195.0", "6195.0", "6195.0", "6195.0", "6215.3"],
#   :crypto_compare=>["6234.77", "6234.29", "6232.82", "6226.63", "6239.2", "6245.76", "6243.51", "6240.57", "6237", "6235.17"],
#   :coin_paprika=>["6234.28","6234.28","6234.28","6234.28","6234.28","6234.28","6234.28","6234.28","6234.28","6248.60"]
# }
