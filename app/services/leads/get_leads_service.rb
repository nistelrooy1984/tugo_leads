# frozen_string_literal: true

module Leads
  class GetLeadsService
    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      @results = Lead.all
    end
  end
end
