output "cd_user_access_key_id" {
  value       = aws_iam_access_key.cd.id
  description = "AWS Key ID for CD user"
}

output "cd_user_access_key_secret" {
  description = "Access key secret for CD user"
  value       = aws_iam_access_key.cd.secret
  sensitive   = true
}