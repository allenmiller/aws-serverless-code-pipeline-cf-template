#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install -g serverless
npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env"
echo "_______________________________"
env

echo serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v
