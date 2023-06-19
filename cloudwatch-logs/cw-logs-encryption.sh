# asociar al grupo de registro (log) existente
aws logs associate-kms-key --log-group-name /aws/lambda/demo-lambda-kms --kms-key-id arn:aws:kms:us-east-1:163913316867:key/8e290456-5bac-4cbd-8d52-43d12d662c3a --region us-east-1

# crear nuevo grupo de registro (log)
aws logs create-log-group --log-group-name /example-encrypted --kms-key-id arn:aws:kms:us-east-1:163913316867:key/8e290456-5bac-4cbd-8d52-43d12d662c3a --region us-east-1
