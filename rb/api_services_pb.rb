# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: api.proto for package 'grpcnc'

require 'grpc'
require 'api_pb'

module Grpcnc
  module Nc
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'grpcnc.Nc'

      rpc :SendSMS, SendSMSRequest, SendSMSReply
    end

    Stub = Service.rpc_stub_class
  end
end
