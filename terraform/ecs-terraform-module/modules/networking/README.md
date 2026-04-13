# Networking Module

This module is responsible for creating the networking layer required for the application. It sets up a VPC with both public and private subnets, ensuring that the application's compute resources (ECS containers) run in private subnets only. The module also provisions necessary networking components such as route tables and internet gateways.