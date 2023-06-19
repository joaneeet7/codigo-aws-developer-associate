# Crear bucket S3
aws s3 mb s3://joan-code-sam

# Package Cloudformation
aws cloudformation package --template-file template.yaml --s3-bucket joan-code-sam --output-template-file gen/template-generated.yaml

# sam package ...

# Deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM