#!/usr/bin/env bash

printf "Configuring localstack components..."

readonly LOCALSTACK_URL=http://localstack:4566
sleep 5;
set -x

# Configure dummy credentials
aws configure set aws_access_key_id foo
aws configure set aws_secret_access_key bar
echo "[default]" > ~/.aws/config
echo "region = us-east-1" >> ~/.aws/config
echo "output = json" >> ~/.aws/config

# Create dynamo
#aws dynamodb --endpoint-url=$LOCALSTACK_URL create-table \
#    --table-name vault \
#    --attribute-definitions AttributeName=Path,AttributeType=S \
#    --attribute-definitions AttributeName=Key,AttributeType=S \
#    --provisioned-throughput \
#        ReadCapacityUnits=1,WriteCapacityUnits=1
