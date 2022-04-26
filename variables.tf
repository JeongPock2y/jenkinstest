variable "region" {
  default = "us-east-1"
}
#array or list 로 한번 만들어보기 
# variable "availability_zone" {
#   default = {
#     a = 1
#     b = 2
#     c = 3
#     d = 4
#   }
# }

variable "Service_tag" {
  description = "tag type : service"
  default = "service"
}

variable "instance_type" {
  default = "t3.micro"
}
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80   #8080
}

variable "alb_name" {
  type        = string
  default     = "${var.first_name}-${var.middle_name}-alb"
}

variable "instance_security_group_name" {
  type        = string
  default     = "${var.first_name}-${var.middle_name}-instance-SG"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "${var.first_name}-${var.middle_name}-alb-SG"
}

variable "route53_addr" {
  default = pock2y.ml
}