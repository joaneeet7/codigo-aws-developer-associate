# construye una imagen docker
docker build -t demo .

# iniciar sesión en ECR (AWS CLI Versión 1) - incluido por motivos de legacy (el examen puede seguir preguntándotelo)
# $(aws ecr get-login --no-include-email --region eu-west-1)

# Iniciar sesión en ECR (AWS CLI Versión 2) - MAC / LINUX
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 1234567890.dkr.ecr.eu-west-1.amazonaws.com

# Para Windows, consulta las instrucciones aquí: http://docs.aws.amazon.com/AmazonECR/latest/userguide/getting-started-cli.html

# etiqueta la imagen (cambia el número de cuenta aws)
docker tag demo:latest 1234567890.dkr.ecr.eu-west-1.amazonaws.com/demo:latest

# push 
docker push 1234567890.dkr.ecr.eu-west-1.amazonaws.com/demo:latest

# pull
docker pull 1234567890.dkr.ecr.eu-west-1.amazonaws.com/demo:latest