# you can use list, index start from 0,1,2,...,n-1
variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type = list
}

# how to use it?
resource "random_pet" "my-pet" {
    prefix = var.prefix[0]
}

# you can use map, key-value pairs
variable file-content {
  type = map
  default = {
    "statement1" = "We love pets!"
    "statement2" = "We love animals!"
  }
}

# how to use it?
resource "local_file" "my-pet" {
  filename = "/root/pets.txt"
  content = var.file-content["statement2"]
}

# you can use objects
variable "bella" {
  type = object({
    name = string
    color = string
    age = number
    food = list(string)
    favorite_pet = bool
  })
  default = {
    name = "bella"
    color = "brown"
    age = 7
    food = ["fish", "chicken", "turkey"]
    favorite_pet = true
  }
}

# you can use tuples
variable "kitty" {
  type = tuple([ string, number, bool ])
  default = [ "cat", 7, true ]
}