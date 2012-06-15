#!/usr/local/bin/ruby

require 'net/http'

baseURL = 'http://magiccards.info/query?q=e%3Aavr%2Fen&s=issue&v=card'
totalPages = 1
currentPage = 1
while (currentPage <= totalPages)
	currentPage += 1
	uri = URI(baseURL + '&p=' + currentPage.to_s)
	curResponse = Net::HTTP.get(uri)
	#p curResponse[0..10]
	curIndex = curResponse.index('<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center" style="margin: 0 0 0.5em 0;">')
	while (curIndex != nil)
		curResponse = curResponse[curIndex+1..-1]
		curIndex = curResponse.index('<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center" style="margin: 0 0 0.5em 0;">')
		p curResponse[0..10]
	end
end

