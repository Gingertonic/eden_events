require_relative "./eden_events/version"
require_relative "./eden_events/cli"
require_relative "./eden_events/month"
require_relative "./eden_events/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module EdenEvents
  class Error < StandardError; end
  # Your code goes here...
end
