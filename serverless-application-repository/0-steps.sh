# Inicializar la aplicación
sam init --runtime python3.9

# Elige 1
# ¿Qué fuente de plantillas quieres utilizar?
# 1 - Plantillas de inicio rápido de AWS
# 2 - Ubicación de la plantilla personalizada
# Elección: 

# Elige 1
# ¿Qué tipo de paquete te gustaría utilizar?
# 1 - Zip (el artefacto es un zip subido a S3)	
# 2 - Imagen (el artefacto es una imagen subida a un repositorio de imágenes ECR)
# Tipo de paquete:

# Nombre del proyecto [sam-app]: [Intro]

# Elige 1
# Plantillas de aplicación de inicio rápido de AWS:
# 1 - Ejemplo Hola Mundo (Hello World)
# 2 - EventBridge Hola Mundo (Hello World)
# 3 - Aplicación EventBridge desde memoria (más de 100 esquemas de eventos)
# 4 - Step Functions App de ejemplo (Operador de bolsa)
# Selección de plantilla:



# 2. actualizar el código y template.yaml

# 3. desplegar

# Crear un bucket S3
aws s3 mb s3://bucketname

# Edita la política de bucket S3, permitiendo al SAR de AWS leer de este bucket
aws s3api put-bucket-policy --bucket bucketname --policy file://policy.json


# 4. empaqueta la aplicación

# Este comando hace lo siguiente
	# - Comprime el contenido de hello_world/ dir y lo sube a nuestro bucket
	# - Genera un nuevo archivo de plantilla packaged.yaml, igual que template.yaml pero con una diferencia CodeUri (referencia a los artefactos empaquetados en S3)
sam package --template-file template.yaml --output-template-file packaged.yaml --s3-bucket <bucketname>

# 5. publica la aplicación
sam publish --template packaged.yaml --region us-east-1

# Crea una nueva aplicación con los siguientes metadatos:
# {
#   "Name": "my-app",
#   "Description": "Hello World",
#   "Author": "Joan",
# 	"SemanticVersion": "0.0.1"
# }

# 6. desplegar en la consola de AWS

# 7. limpiar
# - Elimina la aplicación desplegada
# - Abre la [consola de AWS CloudFormation](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks?filteringStatus=active&filteringText=&viewNested=true&hideStacks=false)
# - Selecciona y borra el stack
# - Elimina la aplicación publicada
# - Abre el [Repositorio de aplicaciones sin servidor de AWS Aplicaciones publicadas](https://console.aws.amazon.com/serverlessrepo/home?region=us-east-1#/published-applications)
# - Selecciona y elimina la aplicación

# Primero vacía el bucket S3
aws s3 rm s3://bucketname --recursive

# Elimina el bucket
aws s3 rb s3://bucketname