variable "ami_id" {
    type = string
    # default = ""
  
}

variable "instance_type" {
    default = "t3.micro"
    type = string

    validation {
      condition = contains(["t3.micro","t3.small", "t3.medium"], var.instance_type)
      error_message = "valid for only t3.micro,t3.small, t3.medium"
    }
  
}

variable "security_group" {
    default = "sg-06fbc124ccc63ee9f"
  
}