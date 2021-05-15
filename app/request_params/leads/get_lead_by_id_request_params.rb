# frozen_string_literal: true

module Leads
  class GetLeadByIdRequestParams < TugoCommon::RequestParamsBase
    attribute :lead_id, :integer

    def initialize(params)
      super(
        lead_id: params.lead_id&.value
      )
    end
  end
end
