locals {
  region = var.aws_region
  ecr_defaults = {
    repository_name = "node-app"
  }
  ecr = merge(local.ecr_defaults, var.ecr_values)

  ecs_defaults = {
    cluster_name = "nodeapp-ecs-cluster"
    service_name = "nodeapp-ecs-service"
  }
  ecs = merge(local.ecs_defaults, var.ecs_values)

  lb_defaults = {
    name     = "tf-alb-nodeapp"
    internal = false
    target_group = {
      name     = "tf-alb-nodeapp-tg"
      port     = 3000
      protocol = "HTTP"
    }
  }
  lb = merge(local.lb_defaults, var.lb_values)

  vpc_defaults = {
    id = ""
  }
  vpc             = merge(local.vpc_defaults, var.vpc)
  use_default_vpc = local.vpc.id == ""

  container_defaults = {
    name  = "nodeapp"
    image = "nodeapp"
    ports = [3000]
  }
  container = merge(local.container_defaults, var.container)
}
