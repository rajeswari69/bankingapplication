provider "aws"{
 region = "ap-south-1"
 ACCESS_KEY = "AKIAXPH3XV36SCC2XOMI"
 SECRET_KEY = "5/DXRn686+62IrgETuxDVEj/75MMlSWBJ4t+qTaH"
}

resource "aws_instance" "example" {
  ami           = "ami-02eb7a4783e7e9317" 
  instance_type = "t2.micro" 
  key_name      = "banking" 
  vpc_security_group_ids= ["sg-08b79d8951441ffa1"]
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("banking.pem")
    host     = self.public_ip
  }
  tags = {
    Name = "testserver"
  }
    provisioner "local-exec" {
         command = "echo ${aws_instance.example.public_ip} > inventory"
        
  }
}
