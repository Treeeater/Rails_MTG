# instead of http.get
require 'open-uri'
i = 0
while i<306
	i+=1
	j = i.to_s
	if (i<10) then j = "0"+j end
	if (i<100) then j = "0"+j end
	File.open("#{j}.jpg", "wb") do |saved_file|
		# the following "open" is provided by open-uri
		open("http://magiccards.info/scans/cn/gtc/#{i}.jpg", 'rb') do |read_file|
			saved_file.write(read_file.read)
		end
	end
end