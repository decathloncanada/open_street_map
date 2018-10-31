require 'rest-client'
require 'json'
require_relative 'client/request'

module OpenStreetMap
  # Client requests
  class Client
    include OpenStreetMap::Client::Request

    BASE_URI = 'https://nominatim.openstreetmap.org/'.freeze
    DEFAULT_USER_AGENT = "webgents/open_street_map_gem_#{SecureRandom.urlsafe_base64}".freeze
    REQUEST_TIMEOUT = 1

    # Search objects by query
    def search(args = {})
      call('search', args)
    end

    # Reverse geocoding generates an address from a latitude and longitude
    def reverse(args = {})
      call('reverse', args)
    end
  end
end
