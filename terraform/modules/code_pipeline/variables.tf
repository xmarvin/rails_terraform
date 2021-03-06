variable "repository_url" {
  description = "The url of the ECR repository"
}

variable "repository_name" {
  description = "repository name"
}

variable "region" {
  description = "The region to use"
}

variable "environment" {
	description = "Environment for the application"
}

variable "ecs_cluster_name" {
  description = "The cluster that we will deploy"
}

variable "ecs_service_name" {
  description = "The ECS service that will be deployed"
}

variable "run_task_subnet_id" {
  type 		  = string
  description = "The subnet Id where single run task will be executed"
}

variable "run_task_security_group_ids" {
  type        = list
  description = "The security group Ids attached where the single run task will be executed"
}

variable "app_name" {
  description = "Web app name"
}