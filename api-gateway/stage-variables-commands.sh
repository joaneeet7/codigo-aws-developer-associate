# Para el alias DEV (sustituye la región y el número de cuenta en consecuencia)
aws lambda add-permission   --function-name "arn:aws:lambda:eu-west-2:387124123361:function:lambda-api-gateway-proxy-root-get:DEV"   --source-arn "arn:aws:execute-api:eu-west-2:387124123361:kfz6b0ty9i/*/GET/stagevariables"   --principal apigateway.amazonaws.com   --statement-id eb4791cf-60c1-4a0f-b519-bbdb1ff13114   --action lambda:InvokeFunction --region eu-west-2


# Para el alias TEST (sustituye la región y el número de cuenta en consecuencia)
aws lambda add-permission   --function-name "arn:aws:lambda:eu-west-2:387124123361:function:lambda-api-gateway-proxy-root-get:TEST"   --source-arn "arn:aws:execute-api:eu-west-2:387124123361:kfz6b0ty9i/*/GET/stagevariables"   --principal apigateway.amazonaws.com   --statement-id eb4791cf-60c1-4a0f-b519-bbdb1ff13114   --action lambda:InvokeFunction --region eu-west-2
 
# Para el alias PROD (sustituye la región y el número de cuenta en consecuencia)
aws lambda add-permission   --function-name "arn:aws:lambda:eu-west-2:387124123361:function:lambda-api-gateway-proxy-root-get:PROD"   --source-arn "arn:aws:execute-api:eu-west-2:387124123361:kfz6b0ty9i/*/GET/stagevariables"   --principal apigateway.amazonaws.com   --statement-id eb4791cf-60c1-4a0f-b519-bbdb1ff13114   --action lambda:InvokeFunction --region eu-west-2