# frozen_string_literal: true

module Leads
  class GetAllMasterService

    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      countries = Master::Country.all

      provinces = Master::Province.all

      districts = Master::District.all

      wards = Master::Ward.all

      @results = {
        countries: countries,
        provinces: provinces,
        districts: districts,
        wards: wards
      }
    end
  end
end