module ShutterstockRuby
  # A class to hold all images related code.
  class Images
    extend Connections

    def self.search(query, options = {})
      JSON.parse(self.get('/images/search', { query: query }.merge(options)))
    end

    # to use similar you need to create an image first
    def self.create(base64_image, options = {})
      JSON.parse(self.post('/images', { base64_image: base64_image }, options))
    end

    def self.similar(id, options = {})
      JSON.parse(self.get("/images/#{id}/similar", options))
    end

  end
end
