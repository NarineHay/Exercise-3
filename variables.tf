variable "alb_name" {
  default = "my-alb"
  type        = string  
}

variable "target_group_name" {
  default = "my-target-group"
  type        = string  
}

variable "vpc_id" {
  default = "vpc-0690242102e611a6b"
  type        = string  
}

variable "subnet_1" {
  default = "subnet-02478fe18de26199a"
  type        = string  
}

variable "subnet_2" {
  default = "subnet-04e58ac582b26a669"
  type        = string  
}

variable "my_sg_name" {
  default = "my_sg"
  type        = string  
}

variable "my_domain" {
  default = "exercise-3"
  type        = string  
}
