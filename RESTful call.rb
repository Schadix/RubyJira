require 'json'
require 'net/http'
http = Net::HTTP.new('www.arvatosystems-us.com')
http.start do |http|
begin
   req = Net::HTTP::Get.new('/jira/rest/api/2.0.alpha1/issue/TEST-1')

   # we make an HTTP basic auth by passing the
   # username and password
   req.basic_auth 'martin.schade@bertelsmann.de', 'n1lpf3rd7'
 rescue
    print "Connection error."
end
   resp, data = http.request(req)
   #puts data
   result = JSON.parse(data)
   print "Estimate: #{result['fields']['timetracking']['value']['timeoriginalestimate']}\n"
   #print "\nRESULT\n#{result}"
end

