output "cd_user_access_key_id" {
  value       = aws_iam_access_key.cd.id
  description = "AWS Key ID for CD user"
}

output "cd_user_access_key_secret" {
  description = "Access key secret for CD user"
  value       = aws_iam_access_key.cd.secret
  sensitive   = true
}

output "ecr_repo_app" {
  description = "ECR repository URL for app image"
  value       = aws_ecr_repository.app.repository_url
}

output "ecr_repo_proxy" {
  description = "ECR repository URL for proxy image"
  value       = aws_ecr_repository.proxy.repository_url
}