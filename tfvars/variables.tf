variable "instances" {
    type = map

}

variable "domain_name" {
    default = "daws81s.online"
}

variable "zone_id" {
    default = "Z0951733247NJS9XF1LII"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "true"
    }
  
}

variable "tags" {
    type = map
  
}

variable "environment" {
  
}