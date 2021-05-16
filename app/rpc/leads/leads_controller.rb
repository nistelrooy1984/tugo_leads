# frozen_string_literal: true

module Leads
  class LeadsController < ::Gruf::Controllers::Base
    bind ::Tugo::Leads::V1::LeadService::Service

    def get_leads
      service = Leads::GetLeadsService.new(nil)
      service.run!
      presenter = Leads::LeadsPresenter.new(service.results)
      presenter.generate_response
    end

    def get_lead_by_id
      request_params = Leads::GetLeadByIdRequestParams.new(request.message)
      request_params.validate!
      service = Leads::GetLeadByIdService.new(request_params, nil)
      service.run!
      presenter = Leads::LeadPresenter.new(service.result)
      presenter.generate_response
    end

    def get_leads_by_owner_id
      request_params = Leads::GetLeadsByOwnerIdRequestParams.new(request.message)
      request_params.validate!
      service = Leads::GetLeadsByOwnerIdService.new(request_params, nil)
      service.run!
      presenter = Leads::LeadsPresenter.new(service.result)
      presenter.generate_response
    end

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
