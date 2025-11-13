variable "instances" {
    default = {
        dev = {
            mysql = "t2.small"
            backend = "t2.micro"
            frontend = "t2.micro"
        }
        qa = {
            mysql = "t2.small"
            backend = "t2.micro"
            frontend = "t2.micro"
        }
        prod = {
            mysql = "t2.small"
            backend = "t2.micro"
            frontend = "t2.micro"
        }
    } 
}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "true"
    }
}

variable "tags" {
    type = map(string)
    default = {}

}