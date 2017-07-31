require "./fcm/*"
require "json"
require "http/client"

module Fcm
  class Base
    getter :base_uri, "https://fcm.googleapis.com/fcm"
    getter :timeout, 30
    getter :format, :json

    def initialize(@api_key : String, @options : {} of String)
    end

    def send(registration_id, options : {} of String)
      message = { "to" => registration_id }.merge(options)
      response = HTTP::Client.post(
        @base_uri,
        headers: HTTP::Headers {"Authorzation" => "key=#{@api_key}", "Content-Type" => "application/json" },
        body: message.to_json
      )
    end

  end
end
