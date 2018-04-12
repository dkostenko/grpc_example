package main

import (
	"log"
	"net"

	pb "github.com/mlnagents/qwe/grpcnc"
	"golang.org/x/net/context"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

func main() {
	grpcServ := grpc.NewServer()
	ourServer := &ncServer{}

	pb.RegisterNcServer(grpcServ, ourServer)
	reflection.Register(grpcServ)

	listener, _ := net.Listen("tcp", "127.0.0.1:8081")

	log.Println("gRPC server listening ...")
	grpcServ.Serve(listener)
}

type ncServer struct{}

func (m *ncServer) SendSMS(ctx context.Context, in *pb.SendSMSRequest) (*pb.SendSMSReply, error) {
	log.Println("====> ", in.Phone, ":", in.Text)
	return &pb.SendSMSReply{ErrorCode: 1001}, nil
}
