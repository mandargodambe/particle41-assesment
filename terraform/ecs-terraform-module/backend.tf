terraform {
  backend "s3" {
    # bucket = "your-s3-bucket-name"  # Provide via -backend-config or leave for local state
    key    = "terraform/state"
    region = "ap-south-1"
    encrypt = true
  }
}