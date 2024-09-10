# frozen_string_literal: true

require 'http'

module VoyageAI
  class Client
    BASE_URL = 'https://api.voyageai.com'.freeze

    attr_reader :api_key

    def initialize(api_key:)
      @api_key = api_key
    end

    # Add API methods here, for example:
    # def create_embedding(text)
    #   response = post('/embeddings', json: { input: text })
    #   JSON.parse(response.body)
    # end

    private

    def post(endpoint, **options)
      HTTP.auth("Bearer #{api_key}")
          .headers(accept: 'application/json')
          .post("#{BASE_URL}#{endpoint}", **options)
    end

    def get(endpoint, **options)
      HTTP.auth("Bearer #{api_key}")
          .headers(accept: 'application/json')
          .get("#{BASE_URL}#{endpoint}", **options)
    end
  end
end