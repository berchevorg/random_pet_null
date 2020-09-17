resource "random_pet" "name" {
 length    = "4"
 separator = "-"
}

# #version 0.11
# output "random_pet" {
#   value = "${random_pet.name.id}"
# }

# version 0.12/0.13
output "random_pet" {
  value = random_pet.name.id
}

resource "null_resource" "echo_dummyy" {
  provisioner local-exec {
    command = "ls -la"
  }
 
  triggers = {
     hack = "${timestamp()}"
  }
}

resource "null_resource" "echo_dummyy1" {
  provisioner local-exec {
    command = "cat /terraform/.terraformignore"
  }
 
  triggers = {
     hack = "${timestamp()}"
  }
}


resource "null_resource" "echo_dummyy2" {
  provisioner local-exec {
    command = "pwd"
  }
 
  triggers = {
     hack = "${timestamp()}"
  }
}
