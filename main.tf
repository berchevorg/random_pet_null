resource "random_pet" "name" {
 length    = "2"
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
