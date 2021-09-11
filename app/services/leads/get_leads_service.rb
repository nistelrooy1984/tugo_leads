# frozen_string_literal: true

module Leads
  class GetLeadsService
    include ActiveModel::Model

    attr_reader :results

    def initialize(auth_header, jwt)
      @auth_header = auth_header
      @jwt = jwt
    end

    def run!
      leads = if @jwt['params']['is_admin']
                Lead.all
              else
                Lead.where_by_subordinate_users(get_subordinate_user_ids)
              end

      @results = leads
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
