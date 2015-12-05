require 'em-eventsource'
require 'json'

EM.run do
  source = EM::EventSource.new("http://github-firehose.herokuapp.com/events")

  source.error do |error|
    puts "error #{error}"
  end

  source.on "event" do |message|
    data = JSON.parse(message)
    if data['type'] == 'PullRequestEvent' && data['payload']['action'] == 'opened'
      p 'newpr'
      EM::HttpRequest.new(ENV['API_URL']).post body: data.merge(:api_key => ENV['API_KEY'])
    end
	end

	source.start
end