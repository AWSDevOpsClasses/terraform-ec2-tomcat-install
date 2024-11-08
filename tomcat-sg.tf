# Security group resource for Ubuntu server
resource "aws_security_group" "tomcatsg" {
  name                = "Tomcat-SG"
  description         = "Security Group for Tomcat Server"
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = "All outbound traffic"
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
  ingress                = [
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = "ssh from anywhere"
     from_port        = 22
#	 from_port        = local.ssh_port
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 22
#	 to_port          local.ssh_port
   },
  #]
  #ingress                = 
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = "tomcat from anywhere"
     from_port        = 8080
#	   from_port        = local.
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 8080
   },
  ]
  tags = {
    Name = "tomcat-SG"
    Envoronment = "dev"
  }
}
