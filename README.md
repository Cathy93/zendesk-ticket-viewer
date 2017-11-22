# Zendesk Ticket Viewer
Fabulously easy to use, the Zendesk Ticket Viewer is the most exciting console application you can use to view your tickets!  

## About
This was the coding challenge for the Zendesk Internship. You needed to be able to access the Zendesk API and return the results as either all the formatted tickets or choose a particular individual ticket based on its ID.

## How to Run Locally
1. Clone this repo to you local machine through command-line or Download it as a zipfile.
2. Unzip the file
3. Ensure you have at least version 2.4.0 of Ruby installed. Version can be checked by running ruby -v in the terminal. If not, you can download ruby here https://www.ruby-lang.org/en/downloads/
4. cd into the repository and then run bundle install to install dependencies
5. Enter in ```ruby ticket_viewer.rb``` to start the application

## The Challenge
Zendesk is a customer service tool that allows the creation and management of support tickets. Your task
is to build a Ticket Viewer that displays ticket information from a Zendesk account.

## Functional Requirements
Your application should have these functionalities:
○ Display details for a single ticket of your Zendesk account
○ Display details for all tickets of your Zendesk account
○ The ticket details to display consists of the following:
  ■ id
  ■ subject
  ■ description
  ■ updated_at

## Testing

I experimented with both Minitest and Rspec for testing, however was unable to get either working to a sufficient level that gave meaningful feedback.

## Design Notes

I chose to write this application in Ruby. Whilst I could have done it in Rails, I felt that it would do too much of the 'Heavy lifting' and I would learn more paring it back. It would also allow me to keep the application more light weight and simplified.

I separated my concerns into two folders, on to deal primarily with the Zendesk API and the other to display the user interface. I tried to keep my code clean and neat and wrote it in a logical methodical way.
