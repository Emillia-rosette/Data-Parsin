require 'json'


class ParseJson
attr_accessor :json_file


	def initialize(json_file)

		@json_file = JSON.parse(File.read(json_file))
	end

	def get_parse_value

		@json_file['base']
		
	end

end 


json = ParseJson.new('json_exchange_rates.json')

p json.json_file.class
p json.json_file