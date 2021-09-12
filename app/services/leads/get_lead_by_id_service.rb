# frozen_string_literal: true

module Leads
  class GetLeadByIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header, jwt)
      @request_params = request_params
      @auth_header = auth_header
      @jwt = jwt
    end

    def run!
      if @jwt['params']['is_admin']
        @result = Lead.find_by_id(@request_params.lead_id)

        raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.lead.record_not_found') if @result.blank?
      else
        is_exist = Lead.find_by_id(@request_params.lead_id)

        @result = Lead.where_by_subordinate_users(get_subordinate_user_ids)
                      .find_by_id(@request_params.lead_id)

        raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.lead.do_not_access') if is_exist.present? && @result.blank?

        raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.lead.record_not_found') if @result.blank?
      end
    end

    def get_subordinate_user_ids
      response = TugoCommon::GrpcService.call_grpc(
        @auth_header,
        Settings.common.host,
        Tugo::Common::V1::UserService,
        :GetRoleBasedSubordinateUsers,
        Tugo::Common::V1::UserIdRequest.new(
          user_id: Google::Protobuf::Int64Value.new(value: @jwt['params']['id'].to_i)
        ).to_h
      ).message

      response.users.collect(&:id).map(&:value) << @jwt['params']['id'].to_i
    end
  end
end
