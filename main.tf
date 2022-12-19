resource "null_resource" "health_check" {

 provisioner "local-exec" {

    command = "./helloworld.sh"
  }
}


resource "null_resource" "actions" {
  provisioner "local-exec" {
    command = "/bin/bash scripts/zip_cf.sh"

    environment = {
      FILENAME = "test"
      FILEPATH = "."
    }
  }
}
