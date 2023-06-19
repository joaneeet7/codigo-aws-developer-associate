# 1. instalar el CDK
sudo npm install -g aws-cdk-lib

# el nombre del directorio debe ser cdk-app/ para ir con el resto del tutorial, cambiarlo causará un error
mkdir cdk-app
cd cdk-app/

# inicializar la aplicación
cdk init app --language javascript
# verifica que funciona correctamente
cdk ls

# 2. copiar el contenido de cdk-app-stack.js en lib/cdk-app-stack.js


# 3. configurar la función Lambda
mkdir lambda && cd lambda
touch index.py

# 4. arrancar la aplicación CDK
cdk bootstrap

# 5. (opcional) sintetizar como plantilla CloudFormation
cdk synth


# 6. desplegar el stack CDK
cdk deploy

# 7. vaciar el bucket s3
# 8. destruir el stack
cdk destroy