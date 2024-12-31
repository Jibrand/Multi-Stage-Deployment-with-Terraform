resource "aws_instance" "my_app_server" {
    count = var.count
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = "${var.my_env}-tws-demo-app-server"
    }
}