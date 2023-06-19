#!/bin/bash

# Instalación del agente CodeDeploy
sudo yum update
sudo yum install ruby

# Descargar el agente (sustituir la región)
wget https://aws-codedeploy-eu-west-3.s3.eu-west-3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status