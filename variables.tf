variable "name"            { type = string }
variable "region"          { type = string }
variable "tags"            { type = map(string); default = {} }
variable "master_password" { type = string; sensitive = true }
