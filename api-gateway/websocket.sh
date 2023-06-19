sudo npm install -g wscat

wscat -c wss://[some-uniqueid].execute-api.[region].amazonaws.com/[stage-name]

# envía el siguiente mensaje
{ "action": "sendmessage", "data": "Hola Mundo!" }


# ejecutar en varias consolas