module Price
  class Extractor
    def initialize(values, url)
      @values, @url = values, url
    end

    def to_f
      if @url.include?('coinbase')
        @values['data']['amount'].to_f
      else
        @values['ticker']['price'].to_f
      end
    end
  end

  def values
    Rails.cache.fetch("#{url}", expires_in: 2.minute) do
      conn = ::Faraday.new(url: url) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.response :json
      end

      conn.get.body
    end
  end

  def current_price
    Extractor.new(values, url).to_f
  end
end
