resource "aws_instance" "test" {
  ami           = "ami-03a933af70fa97ad2" 
  instance_type = "t2.micro" 
  key_name = "AssignmentKey"
    
  tags = {
    Name = "test-server"
  }
      
}
