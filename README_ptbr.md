![alt text](https://www.terraform.io/assets/images/logo-hashicorp-3f10732f.svg)

# **tf-module-target-group**

Módulo Terraform para criação de target group.

  **Requisitos**
 - Terraform
 - AWS Account
  
**Dependências**
 - AWS Auto Scaling Group

**Exemplode Uso**
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

 **Variáveis**
 ------
 |        Nome        |                      Descrição                                    |  Default  |
 | ------------------ |-------------------------------------------------------------------|:---------:|
 | port               | Porta da aplicação                                                |    ""     |
 | protocol           | Protocolo usado pela aplicação                                    |    ""     |
 | vpc_id             | ID da VPC                                                         |    ""     |
 | interval           | Tempo entre as checages do health check                           |    30     |
 | healthy_threshold  | Número de verificações com sucesso.                               |     3     |
 | unhealthy_threshold| Número de falhas sucessivas ante de declarar o serviço nao integro|     3     |

 **Outputs**
 ------
 |          Nome        |                   Valor                 |
 | -------------------- |:---------------------------------------:|
 | lb_target_group_id   | aws_lb_target_group.lb_target_group.id  |
 | lb_target_group_arn  | aws_lb_target_group.lb_target_group.arn |
 | lb_target_group_name | aws_s3_bucket_object.bucket_object.*.id |
 | bucket_object_arn    | aws_lb_target_group.lb_target_group.name|

 **Documentação Externa**
 - [AWS Target Group](https://docs.aws.amazon.com/pt_br/elasticloadbalancing/latest/application/load-balancer-target-groups.html)
 - [Terraform Target Group](https://www.terraform.io/docs/providers/aws/r/lb_target_group.html)

 **Recursos Criados**
 ------
 - Target Group.