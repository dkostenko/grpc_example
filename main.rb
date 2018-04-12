this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'rb')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'api_services_pb'

def main
  stub = Grpcnc::Nc::Stub.new('127.0.0.1:8081', :this_channel_is_insecure)
  reply = stub.send_sms(Grpcnc::SendSMSRequest.new(text: "hello user", phone: "1122334455"))
  puts reply.error_code
end

main