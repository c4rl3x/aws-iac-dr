variable "project_name" { type = string }
variable "environment"  { type = string }
variable "committags"   { type = string }
variable "dr_enabled"   { 
  type    = string
  default = "true" 
}
variable "extra_tags" {
  type    = map(string)
  default = {}
}