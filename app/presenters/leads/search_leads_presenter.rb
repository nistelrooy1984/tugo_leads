module Leads
  class SearchLeadsPresenter < PresenterBase
    def initialize(leads)
      @leads = leads
    end

    def generate_response
      Tugo::Leads::V1::LeadsResponse.new(
        leads: @leads.each_with_object([]) do |lead, arr|
          arr << Tugo::Leads::V1::Lead.new(
            id: proto_int64(lead.id),
            first_name: proto_string(lead.first_name),
            last_name: proto_string(lead.last_name),
            phone: proto_string(lead.phone),
            email: proto_string(lead.email),
            master_status_id: proto_int64(lead.master_status_id),
            master_lead_source_id: proto_int64(lead.master_lead_source_id),
            master_industry_id: proto_int64(lead.master_industry_id),
            master_rating_id: proto_int64(lead.master_rating_id),
            address: proto_string(lead.address),
            master_ward_id: proto_int64(lead.master_ward_id),
            master_district_id: proto_int64(lead.master_district_id),
            master_province_id: proto_int64(lead.master_province_id),
            master_country_id: proto_int64(lead.master_country_id),
            description: proto_string(lead.description),
            creator_id: proto_int64(lead.creator_id),
            owner_id: proto_int64(lead.owner_id),
            modified_by_id: proto_int64(lead.modified_by_id),
            created_at: proto_string(lead.created_at),
            updated_at: proto_string(lead.updated_at)
          )
        end
      )
    end
  end
end