# frozen_string_literal: true

module Leads
  class SearchLeadsRequestParams < TugoCommon::RequestParamsBase
    attribute :first_name, :string
    attribute :last_name, :string
    attribute :phone, :string
    attribute :email, :string
    attribute :owner_id, :integer

    def initialize(params)
      super(
        first_name: params.first_name&.value,
        last_name: params.last_name&.value,
        phone: params.phone&.value,
        email: params.email&.value,
        owner_id: params.owner_id&.value
      )
    end
  end
end
