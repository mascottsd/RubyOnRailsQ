require "curb"
require "nokogiri"

http = Curl.get("http://www.latimes.com") do |http|
	http.headers['User Agent'] = ''
end
puts http.body.str