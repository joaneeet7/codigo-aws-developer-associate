# /bin/bash

# Necesitas tener nodejs / npm instalado de antemano
npm install aws-xray-sdk

# Establece los permisos adecuados para los archivos del proyecto
chmod a+r * 

# Necesitas tener disponible el comando zip
zip -r funcion.zip .

# Crea la función Lambda utilizando la CLI
aws lambda create-function --zip-file fileb://function.zip --function-name lambda-xray-with-dependencies --runtime nodejs14.x --handler index.handler --role arn:aws:iam::163913316867:role/DemoLambdaWithDependencies