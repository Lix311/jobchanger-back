# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'nokogiri'
require 'net/http'

def seed_positions(data)
    data.each do |job|
        Job.create(
            company: job['company'],
            location: job['location'],
            title: job['title'],
            logo: job['company_logo'],
            description: job['description'],
            date: job['created_at']
        )
    end 
end 


def api_call(page)
  first_fifty = "https://jobs.github.com/positions.json"
  next_page = first_fifty + "?page=" + page.to_s
  if page == 0
    uri = URI.parse(URI.escape(first_fifty))
  else
    uri = URI.parse(URI.escape(next_page))
  end
  response = Net::HTTP.get_response(uri)
  data = JSON.parse(response.body)
  seed_positions(data) # data is the json, you will probably want to write your own function here
  return data
end

page = 1
loop do
  data = api_call(page)
  page += 1
  if data.empty? 
    break
  end
end

# require 'rest-client'

# rm = RestClient.get `https://jobs.github.com/positions.json?description=ruby&page=1`




