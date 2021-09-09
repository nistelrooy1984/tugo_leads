# frozen_string_literal: true

module Leads
  class LeadRequestParams < TugoCommon::RequestParamsBase
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

    def initialize(lead)
      super(
        id: lead.id&.value,
        first_name: lead.first_name&.value,
        last_name: lead.last_name&.value,
        phone: lead.phone&.value,
        email: lead.email&.value,
        master_status_id: lead.master_status_id&.value,
        master_lead_source_id: lead.master_lead_source_id&.value,
        master_industry_id: lead.master_industry_id&.value,
        master_rating_id: lead.master_rating_id&.value,
        master_ward_id: lead.master_ward_id&.value,
        master_district_id: lead.master_district_id&.value,
        master_province_id: lead.master_province_id&.value,
        master_country_id: lead.master_country_id&.value,
        description: lead.description&.value,
        creator_id: lead.creator_id&.value,
        owner_id: lead.owner_id&.value,
        modified_by_id: lead.modified_by_id&.value,
        salutation: lead.salutation&.value,
        other_phone: lead.other_phone&.value,
        street: lead.street&.value,
        delete_flag: lead.delete_flag&.value,
      )
    end
  end
end
