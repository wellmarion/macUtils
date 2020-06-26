#!/bin/bash
ssh -i pgsql -CNL 5432:aws-db-pdv1.cd6uowqooguq.us-east-1.rds.amazonaws.com:5432 ec2-user@aws-zanthus1