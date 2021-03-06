require_relative 'zendesk_api_helper'

class Menu
  attr_reader :tickets

def initialize
  @tickets = Zendesk_ticket_helper.new
  @tickets.connecting_api
end

def main_menu
  puts "Welcome to the Zendesk Ticket Viewer"
  puts "---------------------------"
  puts "Enter 1 to view a single ticket"
  puts "Enter 2 to view all the tickets"
  puts "Enter Q to exit the program"
  puts "---------------------------"

  choice = gets.strip

  case choice
   when "1"
     single_ticket
   when "2"
     all_tickets
   when "quit"
     quit
   else
     puts "--Invalid input!--"
   end
 end

def single_ticket
  puts "Please enter the ID of the ticket you wish to see"
  ticket_id = gets.strip

  ticket = @tickets.display_ticket(ticket_id)

   if ticket == "Help"
     puts "---------------------------"
     puts "--Invalid Ticket ID!--"
     puts "---------------------------"
   else
     puts "---------------------------"
     puts "Ticket ID:           #{ticket[:id]}"
     puts "Ticket Subject:      #{ticket[:subject]}"
     puts "Ticket Description:  #{ticket[:description]}"
     puts "Ticket Last Updated At:       #{ticket[:updated_at]}"
     puts "---------------------------"
   end
 end

 def all_tickets
   begin
   tickets = @tickets.display_page
    tickets.each do |ticket|
      puts "---------------------------"
      puts "Ticket ID:           #{ticket[:id]}"
      puts "Ticket Subject:      #{ticket[:subject]}"
      puts "Ticket Description:  #{ticket[:description]}"
      puts "Ticket Last Updated At:       #{ticket[:updated_at]}"
      puts "---------------------------"
    end
  rescue => e
   connection_error
  end
  end

  def quit
   puts "--Exiting Ticket Viewer Application--"
 end

  def connection_error
    puts " ---Oh No. You just broke the internet--- "
    puts " Why would you even do something like that? "
    puts " --- Just kidding---"
    puts "--There was a problem connecting to the API--"
    puts "--Please check your network connection, or try again later--"
    puts "---------------------------------"

  end

 end
