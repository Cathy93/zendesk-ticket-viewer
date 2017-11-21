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

    def display_page
      tickets = @client.tickets
      return tickets
    end

    def display_ticket(ticketID)
      begin
        ticket = @client.tickets.find!(:id => ticketID)
        return ticket
      rescue => e
        return "Help"
      end
    end
  end
