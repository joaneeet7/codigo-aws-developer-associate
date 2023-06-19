# 1. instalar el CDK
sudo npm install -g aws-cdk

# el nombre del directorio debe ser cdk-app/ para ir con el resto del tutorial, cambiarlo causará un error
mkdir cdk-app
cd cdk-app/

# inicializar la aplicación
cdk init --language javascript

# verifica que funciona correctamente
cdk ls

# instalar los paquetes necesarios
npm install @aws-cdk/aws-s3 @aws-cdk/aws-iam @aws-cdk/aws-lambda @aws-cdk/aws-lambda-event-sources @aws-cdk/aws-dynamodb


# 2. copiar el contenido de cdk-app-stack.js en lib/cdk-app-stack.js


# 3. configurar la función Lambda
mkdir lambda && touch index.py

# 4. arrancar la aplicación CDK
cdk bootstrap

# 5. (opcional) sintetizar como plantilla de CloudFormation
cdk synth


# 6. desplegar el stack CDK
cdk deploy

# 7. vaciar el bucket s3
# 8. destruir el stack
cdk destroy