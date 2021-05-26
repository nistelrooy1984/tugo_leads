# frozen_string_literal: true

module Leads
  class UpsertLeadsRequestParams < TugoCommon::RequestParamsBase
    attribute :leads

    def initialize(params)
      leads = get_leads(params)
      super(
        leads: leads
      )
    end

    private

    def get_leads(params)
      params.leads.each_with_object([]) do |lead, arr|
        arr << Leads::LeadRequestParams.new(lead)
      end
    end
  end
end
