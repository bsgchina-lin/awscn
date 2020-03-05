variable "varname" {
  default = "Beta"
}

variable "name" {
  default = ""
}

module "demo" {
  source  = "tfe.better-service.cloud:9443/bsgchina/demo/random"
#  source  = "./terraform-random-demo"
  version = "1.0.0"
  name = "NameVarInModule"
}


output "random_in_module_is" {
  value = module.demo.random_output
}

output "name_in_module_is" {
  value = module.demo.name_var_output
}
