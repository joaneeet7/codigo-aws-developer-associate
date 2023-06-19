// Requiere el SDK de X-Ray (necesitas instalarlo primero)
const AWSXRay = require('aws-xray-sdk-core')

// Requiere el SDK de AWS (viene con cada función Lambda)
const AWS = AWSXRay.captureAWS(require('aws-sdk'))

// Utilizaremos el servicio S3, por lo que necesitamos un rol IAM adecuado
const s3 = new AWS.S3()

exports.handler = async function(event) {
  return s3.listBuckets().promise()
}

