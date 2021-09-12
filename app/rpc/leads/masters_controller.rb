# frozen_string_literal: true

module Leads
  class MastersController < ::Gruf::Controllers::Base
    bind ::Tugo::Leads::V1::MasterService::Service

    def list_master
      request_params = Leads::MastersRequestParams.new(request.message)
      request_params.validate!
      service = Leads::ListMasterService.new(request_params)
      service.run!
      service.results
    end
  end
end
