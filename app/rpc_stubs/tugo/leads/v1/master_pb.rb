# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tugo/leads/v1/master.proto

require 'google/protobuf'

require 'google/protobuf/wrappers_pb'
require 'tugo/leads/v1/common/response_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("tugo/leads/v1/master.proto", :syntax => :proto3) do
    add_message "tugo.leads.v1.ListMasterRequest" do
      optional :table_name, :message, 1, "google.protobuf.StringValue"
    end
  end
end

module Tugo
  module Leads
    module V1
      ListMasterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tugo.leads.v1.ListMasterRequest").msgclass
    end
  end
end
