#!/bin/sh

brew install awscli

aws configure

# Put in AWS secret key and access key (created in IAM in your AWS account), and region (us-east-1). I prefer output of JSON.