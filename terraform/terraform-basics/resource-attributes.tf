
# how to use an output as an input 
resource "local_file" "pet" {
    filename = var.filename
    # content = var.content
    content = "My favorite pet is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}