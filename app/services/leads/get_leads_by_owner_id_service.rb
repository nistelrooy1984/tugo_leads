# frozen_string_literal: true

module Leads
  class GetLeadsByOwnerIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      leads = Lead.where(owner_id: @request_params.owner_id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.lead.record_not_found') if leads.blank?

      @result = leads
    end
  end
end
