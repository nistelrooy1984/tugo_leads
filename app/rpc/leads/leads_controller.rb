# frozen_string_literal: true

module Leads
  class LeadsController < ::Gruf::Controllers::Base
    bind ::Tugo::Leads::V1::LeadService::Service

    include TugoCommon::RequestHandler::AuthGrpcHeaderHandler
    include TugoCommon::RequestHandler::JwtHandler

    # led_00001 Get Lead By Id
    def get_lead_by_id
      request_params = Leads::GetLeadByIdRequestParams.new(request.message)
      request_params.validate!
      service = Leads::GetLeadByIdService.new(request_params, nil)
      service.run!
      presenter = Leads::LeadPresenter.new(service.result)
      presenter.generate_response
    end

    # led_00002 Get Leads By Owner Id (Assigned To)
    def get_leads_by_owner_id
      request_params = Leads::GetLeadsByOwnerIdRequestParams.new(request.message)
      request_params.validate!
      service = Leads::GetLeadsByOwnerIdService.new(request_params, nil)
      service.run!
      presenter = Leads::LeadsPresenter.new(service.result)
      presenter.generate_response
    end

    # led_00003 Get Leads
    def get_leads
      service = Leads::GetLeadsService.new(nil)
      service.run!
      presenter = Leads::LeadsPresenter.new(service.results)
      presenter.generate_response
    end

    # led_00004 Upsert Lead
    def upsert_lead
      request_params = Leads::UpsertLeadRequestParams.new(request.message)
      request_params.validate!
      service = Leads::UpsertLeadService.new(request_params, nil)
      service.run!
      presenter = Leads::UpsertLeadPresenter.new(service.result)
      presenter.generate_response
    end

    # led_00005 Upsert Leads
    def upsert_leads
      request_params = Leads::UpsertLeadsRequestParams.new(request.message)
      request_params.validate!
      service = Leads::UpsertLeadsService.new(request_params, nil)
      service.run!
      presenter = Leads::UpsertLeadsPresenter.new(service.results)
      presenter.generate_response
    end

    # led_00006 Search Leads
    def search_leads
      request_params = Leads::SearchLeadsRequestParams.new(request.message)
      request_params.validate!
      service = Leads::SearchLeadsService.new(request_params, auth_header, jwt)
      service.run!
      presenter = Leads::LeadsPresenter.new(service.results)
      presenter.generate_response
    end
  end
end
