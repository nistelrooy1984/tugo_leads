# frozen_string_literal: true

module Leads
  class GetLeadByIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      lead = Lead.find_by_id(@request_params.lead_id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.lead.record_not_found') if lead.blank?

      @result = lead
    end
  end
end
