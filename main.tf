resource "null_resource" "health_check" {

 provisioner "local-exec" {

    command = "./helloworld.sh"
  }
}
