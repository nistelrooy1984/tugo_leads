# frozen_string_literal: true

module Leads
  class UpsertLeadService
    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      lead = Lead.find_or_initialize_by(id: @request_params.id)

      lead.first_name = @request_params.first_name
      lead.last_name = @request_params.last_name
      lead.phone = @request_params.phone
      lead.email = @request_params.email
      lead.master_status_id = @request_params.master_status_id
      lead.master_lead_source_id = @request_params.master_lead_source_id
      lead.master_industry_id = @request_params.master_industry_id
      lead.master_rating_id = @request_params.master_rating_id
      lead.address = @request_params.address
      lead.master_ward_id = @request_params.master_ward_id
      lead.master_district_id = @request_params.master_district_id
      lead.master_province_id = @request_params.master_province_id
      lead.master_country_id = @request_params.master_country_id
      lead.description = @request_params.description
      lead.creator_id = @request_params.creator_id
      lead.owner_id = @request_params.owner_id
      lead.modified_by_id = @request_params.modified_by_id
      lead.save
      @result = lead
    end
  end
end
