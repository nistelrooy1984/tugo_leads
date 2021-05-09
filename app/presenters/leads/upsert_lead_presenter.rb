# frozen_string_literal: true

module Leads
  class UpsertLeadPresenter < PresenterBase
    def initialize(lead)
      @lead = lead
    end

    def generate_response
      Tugo::Leads::V1::UpsertLeadResponse.new(
        lead: Tugo::Leads::V1::Lead.new(
          id: Google::Protobuf::Int64Value.new(value: @lead.id),
          first_name: Google::Protobuf::StringValue.new(value: @lead.first_name),
          last_name: Google::Protobuf::StringValue.new(value: @lead.last_name),
          phone: Google::Protobuf::StringValue.new(value: @lead.phone),
          email: Google::Protobuf::StringValue.new(value: @lead.email),
          master_status_id: Google::Protobuf::Int64Value.new(value: @lead.master_status_id),
          master_lead_source_id: Google::Protobuf::Int64Value.new(value: @lead.master_lead_source_id),
          master_industry_id: Google::Protobuf::Int64Value.new(value: @lead.master_industry_id),
          master_rating_id: Google::Protobuf::Int64Value.new(value: @lead.master_rating_id),
          address: Google::Protobuf::StringValue.new(value: @lead.address),
          master_ward_id: Google::Protobuf::Int64Value.new(value: @lead.master_ward_id),
          master_district_id: Google::Protobuf::Int64Value.new(value: @lead.master_district_id),
          master_province_id: Google::Protobuf::Int64Value.new(value: @lead.master_province_id),
          master_country_id: Google::Protobuf::Int64Value.new(value: @lead.master_country_id),
          description: Google::Protobuf::StringValue.new(value: @lead.description),
          creator_id: Google::Protobuf::Int64Value.new(value: @lead.creator_id),
          owner_id: Google::Protobuf::Int64Value.new(value: @lead.owner_id),
          modified_by_id: Google::Protobuf::Int64Value.new(value: @lead.modified_by_id),
          created_at: Google::Protobuf::StringValue.new(value: @lead.created_at.to_s),
          updated_at: Google::Protobuf::StringValue.new(value: @lead.updated_at.to_s)
        )
      )
    end
  end
end
