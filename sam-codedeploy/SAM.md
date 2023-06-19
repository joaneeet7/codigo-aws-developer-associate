De: https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-getting-started-hello-world.html

# Paso 1 - Descarga una aplicación de muestra
sam init --runtime python3.9

# Paso 2 - Construye tu aplicación
cd my-app
sam build

# Paso 3 - Empaqueta tu aplicación
sam deploy --guided