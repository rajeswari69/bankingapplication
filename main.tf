resource "aws_instance" "test-server" {
  ami           = "ami-03a933af70fa97ad2" 
  instance_type = "t2.micro" 
  key_name = "AssignmentKey.pem"
  vpc_security_group_ids= ["sg-04fba683f37ca92fd"]
  
  provisioner "remote-exec" {
    inline = [ "echo 'wait to start instance' "]
  }
  tags = {
    Name = "test-server"
  }
  provisioner "local-exec" {
        command = " echo ${aws_instance.test-server.public_ip} > inventory "
  }
    
}
