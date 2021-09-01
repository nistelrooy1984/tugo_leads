# frozen_string_literal: true

module Leads
  class SearchLeadsService
    include ActiveModel::Model

    attr_reader :results

    def initialize(request_params, auth_header, jwt)
      @request_params = request_params
      @auth_header = auth_header
      @jwt = jwt
    end

    def run!
      leads = if @jwt['params']['is_admin']
                Lead.where_first_name(@request_params.first_name)
                    .where_last_name(@request_params.last_name)
                    .where_phone(@request_params.phone)
                    .where_email(@request_params.email)
                    .where_owner_id(@request_params.owner_id)
              else
                Lead.where_by_subordinate_users(get_subordinate_user_ids)
                    .where_first_name(@request_params.first_name)
                    .where_last_name(@request_params.last_name)
                    .where_phone(@request_params.phone)
                    .where_email(@request_params.email)
                    .where_owner_id(@request_params.owner_id)

              end

      @results = leads
    end

    private

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
