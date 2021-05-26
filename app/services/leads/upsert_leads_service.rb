# frozen_string_literal: true

module Leads
  class UpsertLeadsService
    attr_reader :results

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      @results = @request_params.leads.each_with_object([]) do |rec, arr|
        lead = Lead.find_or_initialize_by(id: rec.id)

        lead.first_name = rec.first_name
        lead.last_name = rec.last_name
        lead.phone = rec.phone
        lead.email = rec.email
        lead.master_status_id = rec.master_status_id
        lead.master_lead_source_id = rec.master_lead_source_id
        lead.master_industry_id = rec.master_industry_id
        lead.master_rating_id = rec.master_rating_id
        lead.address = rec.address
        lead.master_ward_id = rec.master_ward_id
        lead.master_district_id = rec.master_district_id
        lead.master_province_id = rec.master_province_id
        lead.master_country_id = rec.master_country_id
        lead.description = rec.description
        lead.creator_id = rec.creator_id
        lead.owner_id = rec.owner_id
        lead.modified_by_id = rec.modified_by_id

        lead.save
        arr << lead
      end
    end
  end
end
