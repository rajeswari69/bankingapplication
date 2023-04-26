resource "aws_instance" "test" {
  ami           = "ami-03a933af70fa97ad2" 
  instance_type = "t2.micro" 
  key_name = "AssignmentKey"
  vpc_security_group_ids= ["sg-04fba683f37ca92fd"]
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "AssignmentKey.pem"
    host     = self.public_ip
  }
  
      
}
