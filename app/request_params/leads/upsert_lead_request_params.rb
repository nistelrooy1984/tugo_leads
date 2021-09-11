# frozen_string_literal: true

module Leads
  class UpsertLeadRequestParams < TugoCommon::RequestParamsBase
    attribute :id, :integer
    attribute :first_name, :string
    attribute :last_name, :string
    attribute :phone, :string
    attribute :email, :string
    attribute :master_status_id, :integer
    attribute :master_lead_source_id, :integer
    attribute :master_industry_id, :integer
    attribute :master_rating_id, :integer
    attribute :master_ward_id, :integer
    attribute :master_district_id, :integer
    attribute :master_province_id, :integer
    attribute :master_country_id, :integer
    attribute :description, :string
    attribute :creator_id, :integer
    attribute :owner_id, :integer
    attribute :modified_by_id, :integer
    attribute :salutation, :string
    attribute :other_phone, :string
    attribute :street, :string
    attribute :delete_flag, :integer

    def initialize(params)
      super(
        id: params.lead.id&.value,
        first_name: params.lead.first_name&.value,
        last_name: params.lead.last_name&.value,
        phone: params.lead.phone&.value,
        email: params.lead.email&.value,
        master_status_id: params.lead.master_status_id&.value,
        master_lead_source_id: params.lead.master_lead_source_id&.value,
        master_industry_id: params.lead.master_industry_id&.value,
        master_rating_id: params.lead.master_rating_id&.value,
        master_ward_id: params.lead.master_ward_id&.value,
        master_district_id: params.lead.master_district_id&.value,
        master_province_id: params.lead.master_province_id&.value,
        master_country_id: params.lead.master_country_id&.value,
        description: params.lead.description&.value,
        creator_id: params.lead.creator_id&.value,
        owner_id: params.lead.owner_id&.value,
        modified_by_id: params.lead.modified_by_id&.value,
        salutation: params.lead.salutation&.value,
        other_phone: params.lead.other_phone&.value,
        street: params.lead.street&.value,
        delete_flag: params.lead.delete_flag&.value,
      )
    end
  end
end
