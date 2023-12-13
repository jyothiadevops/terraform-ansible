resource "aws_instance" "ec2" {
  ami           = "${var.ami}"
  count = "${var.ec2_instance_count}"
  instance_type = "${var.instance_type}"
  availability_zone = var.azs[count.index]
  vpc_security_group_ids = "${var.security_groups}"
  subnet_id             = var.subnet_ids[count.index]
  key_name                 = "${var.key_name}"
  user_data         = file("userdata.sh")
  tags = {
    Name = "${var.hostname}"
    SCTaskNo ="${var.SCTaskNo}"
    Owner = "${var.owner_name}"
    support_group = "${var.support_group}"
    Application = "${var.Application}"
    BU = "${var.BU}"
    Maintinance_Window = "${var.Maintinance_Window}"
    Environment = "${var.Environment}"
    Automation = "${var.Automation}"
    Backup = "${var.Backup}"
    
  }


    provisioner "local-exec" {
    command = "echo ${aws_instance.ec2.public_ips} > inventory"
  } 


  provisioner "local-exec" {
    command = "sleep 150"
  } 

  //provisioner "local-exec" {
    //command = "ansible all -m shell -a 'yum -y install httpd; systemctl restart httpd'"
      //command = "ansible-playbook -u ansadmin -i inventory playbook.yml"
  //}

}

output "ip" {
  value = aws_instance.ec2.public_ips
}
