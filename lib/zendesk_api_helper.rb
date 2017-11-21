require 'zendesk_api'

class Zendesk_ticket_helper


def initalize
end
def connecting_api
  @client = ZendeskAPI::Client.new do |config|
    config.url = "https://catherinemarion.zendesk.com/api/v2"
    config.username = "cathymarion93@gmail.com"
    config.password = "Password"
    config.retry = true
    end
  end
end 
