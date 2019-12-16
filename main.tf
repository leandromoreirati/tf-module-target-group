locals {
    files_list = [
        "${md5(file("${path.module}/main.tf"))}",
        "${md5(file("${path.module}/output.tf"))}",
        "${md5(file("${path.module}/variables.tf"))}",
    ]
    current_deployment = "${join("", local.files_list)}"
}

resource "aws_lb_target_group" "lb_target_group" {
  name     = "${var.name}"
  port     = "${var.port}"
  protocol = "${var.protocol}"
  vpc_id   = "${var.vpc_id}"

  health_check {
      port                = "${var.port}"
      protocol            = "${var.protocol}" 
      interval            = "${var.interval}"
      healthy_threshold   = "${var.healthy_threshold}"
      unhealthy_threshold = "${var.unhealthy_threshold}"

  }

  tags = "${var.tags}" 

  lifecycle {
      create_before_destroy = true
  }
}


