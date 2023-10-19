resource "aws_security_group" "eks_cluster_sg" {
  name   = "eks_cluster_sg"
  vpc_id = aws_vpc.main.id
}

resource "aws_security_group" "eks_worker_sg" {
  name   = "eks_worker_sg"
  vpc_id = aws_vpc.main.id
}