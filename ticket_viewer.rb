require_relative 'lib/menu'

menu = Menu.new
input = nil

if menu.tickets.connection
    menu.main_menu
else
  menu.connection_error
end
