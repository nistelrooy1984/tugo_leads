# frozen_string_literal: true

module Leads
  class LeadsController < ::Gruf::Controllers::Base
    bind ::Tugo::Leads::V1::LeadService::Service

    def upsert_lead
      request_params = Leads::UpsertLeadRequestParams.new(request.message)
      request_params.validate!
      service = Leads::UpsertLeadService.new(request_params, nil)
      service.run!
      presenter = Leads::UpsertLeadPresenter.new(service.result)
      presenter.generate_response
    end
  end
end
