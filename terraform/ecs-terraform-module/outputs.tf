output "application_url" {
  value = "http://${module.alb.alb_dns_name}:80"
}

output "ecs_service_name" {
  value = module.ecs.service_name
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "vpc_id" {
  value = module.networking.vpc_id
}
