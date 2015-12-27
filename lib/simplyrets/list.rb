module SimplyRets
  class List
    include Enumerable

    attr_reader :response

    def initialize(response)
      @response = response
    end

    def each
      to_a.each do |item|
        yield item
      end
    end

    def to_a
      @array ||= @response.deserialize('Array<Listing>')
    end
  end
end
