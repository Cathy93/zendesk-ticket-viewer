require_relative 'zendesk_api_helper'

class Menu

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
     menu.quit
   else
     puts "--Invalid input!--"
   end
end
