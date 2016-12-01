require 'pry'
require 'JSON'

query = `curl http://wger.de/api/v2/exercise/?language=2`

result = JSON.parse(query)

random = 1+ rand(40)


description = result["results"][random]["description"]

binding.pry

p result 