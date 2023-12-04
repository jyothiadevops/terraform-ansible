resource "aws_instance" "r100c96" {
  ami               = "ami-05a5f6298acdb05b6"
  subnet_id         = "subnet-0b2d78e0c0de9aafa"
  security_groups   = ["sg-0a349922203ab7abd"]
  instance_type     = "t2.micro"
  key_name          = "jenkins"
  associate_public_ip_address = true
  //user_data         = file("userdata.sh")
  tags = {
    Name = "Terraform-diff-linux"
  }


    /* provisioner "local-exec" {
    command = "echo ${aws_instance.r100c96.public_ip} > inventory"
  } */


  /* provisioner "local-exec" {
    command = "sleep 150"
  } */

  //provisioner "local-exec" {
    //command = "ansible all -m shell -a 'yum -y install httpd; systemctl restart httpd'"
  //}

}

output "ip" {
  value = aws_instance.r100c96.public_ip
}

output "publicName" {
  value = aws_instance.r100c96.public_dns
}
