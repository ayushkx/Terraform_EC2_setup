resource "aws_instance" "ec2_instance" {
    ami = var.ami_id
    count = var.number_of_instances
    subnet_id = var.subnet_id
    instance_type = var.instance_type
    key_name      = "MyNewKeyPair"
    vpc_security_group_ids = [var.security_id]
    
    tags = {
	Name = var.instance_name
	}

    #   user_data = <<-EOF
    #              #!/bin/bash
    #              sudo apt update
    #              sudo apt install -y python3-pip
    #              sudo pip3 install ansible
    #              EOF

    #  provisioner "local-exec" {
   # command = "sleep 60"
     # }
	
   provisioner "file" {
    source      = "~/terraform_learning/scripts/docker_ansible.sh"
    destination = "/tmp/script.sh"
    
     connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa") 
      host        = self.public_ip
    }
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "/tmp/script.sh",
    ]

     connection {
      type        = "ssh"
      user        = "ubuntu" 
      private_key = file("~/.ssh/id_rsa") 
      host        = self.public_ip
    }
  }

    
} 
