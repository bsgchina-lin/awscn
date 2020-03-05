output "random_output" {
  value = "${random_id.random.hex}"
}

output "name_var_output" {
  value = "${var.name}"
}

