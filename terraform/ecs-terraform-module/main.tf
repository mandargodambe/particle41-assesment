module "networking" {
  source               = "./modules/networking"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "alb" {
  source                           = "./modules/alb"
  alb_name                         = var.alb_name
  listener_port                    = var.listener_port
  vpc_id                           = module.networking.vpc_id
  public_subnet_ids                = module.networking.public_subnet_ids
  target_group_name                = var.target_group_name
  target_group_port                = var.target_group_port
  health_check_path                = var.health_check_path
  health_check_interval            = var.health_check_interval
  health_check_timeout             = var.health_check_timeout
  health_check_healthy_threshold   = var.health_check_healthy_threshold
  health_check_unhealthy_threshold = var.health_check_unhealthy_threshold
}

module "ecs" {
  source                = "./modules/ecs"
  container_image       = var.container_image
  desired_count         = var.desired_count
  cluster_name          = var.cluster_name
  task_family           = var.task_family
  cpu                   = var.cpu
  memory                = var.memory
  service_name          = var.service_name
  container_name        = var.container_name
  container_cpu         = var.container_cpu
  container_memory      = var.container_memory
  container_port        = var.container_port
  vpc_id                = module.networking.vpc_id
  private_subnet_ids    = module.networking.private_subnet_ids
  target_group_arn      = module.alb.target_group_arn
  alb_security_group_id = module.alb.alb_security_group_id
}
