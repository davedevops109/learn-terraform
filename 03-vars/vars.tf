variable "sample" {
  default = 10
}

output "sample" {
  value = var.sample
}

# string data type

variable "sample1" {
  default = "Hello world"
}

#number data type

variable "sample2" {
  default = 100
}

#number data type
variable "sample3" {
  default = true
}

#Default variable type
variable "sample4" {
  default = 100
}

output "sample4" {
  value = var.sample4
}

# list variable type
variable "sample5" {
  default = [
  100,
  "abc",
  "xyz"
  ]
}

output "sample5" {
  value = var.sample5[1]
}

# MAP variable type
variable "sample6" {
  default = {
    number = 100,
    string = "abc",
    boolean = false
    }
}

output "sample6" {
  value = var.sample6["number"]
}

## variables from tfvars
variable "demo1" {}
output "demo1" {
  value = var.demo1
}