![alt text](https://www.terraform.io/assets/images/logo-hashicorp-3f10732f.svg)

# **tf-module-target-group**

Terraform module for target group creation.

  **Requirements **
 - Terraform
 - AWS Account
  
**Dependencies **
 - AWS Auto Scaling Group

**Example of Use**
 ------
```
module "target_group" {
  source = "../targetGroup"

  name       = "RESOURCE_NAME"
  
  port     = "${var.port}"
  protocol = "${var.protocol}"
  vpc_id   = "${var.vpc_id}"
  interval            = "${var.interval}"
  healthy_threshold   = "${var.healthy_threshold}"
  unhealthy_threshold = "${var.unhealthy_threshold}"

  tags = {
    "Tag01" = "Value01"
    "Tag02" = "Value02"
    "Tag03" = "Value03"
    "Tag04" = "Value04"
  }
}
```

 **Variables**
 ------
 |        Nome        |                      Descrição                                         |  Default  |
 | ------------------ |------------------------------------------------------------------------|:---------:|
 | port               | Application Port                                                       |    ""     |
 | protocol           | Protocol used by the application                                       |    ""     |
 | vpc_id             | VPC ID                                                                 |    ""     |
 | interval           | Time between health check checks                                       |    30     |
 | healthy_threshold  | Number of successful checks                                            |     3     |
 | unhealthy_threshold| Number of successive failures before declaring the service not integral|     3     |

 **Outputs**
 ------
 |          Nome        |                   Valor                 |
 | -------------------- |:---------------------------------------:|
 | lb_target_group_id   | aws_lb_target_group.lb_target_group.id  |
 | lb_target_group_arn  | aws_lb_target_group.lb_target_group.arn |
 | lb_target_group_name | aws_s3_bucket_object.bucket_object.*.id |
 | bucket_object_arn    | aws_lb_target_group.lb_target_group.name|

 **External Documentation**
 - [AWS Target Group](https://docs.aws.amazon.com/pt_br/elasticloadbalancing/latest/application/load-balancer-target-groups.html)
 - [Terraform Target Group](https://www.terraform.io/docs/providers/aws/r/lb_target_group.html)

 **Created Resources**
 ------
 - Target Group.