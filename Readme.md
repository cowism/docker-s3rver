
# Table of Contents

1.  [Purpose](#org7f2f0a8)
2.  [Usage](#org6af0154)
    1.  [Run Container](#org5e18954)
    2.  [Create Bucket](#org649615c)
    3.  [List Bucket](#org45466c2)


<a id="org7f2f0a8"></a>

# Purpose

This repository is used for the automated build of a docker image
containing [s3rver](https://github.com/jamhall/s3rver) so it can be used for local testing against [AWS S3](https://aws.amazon.com/s3/getting-started/).


<a id="org6af0154"></a>

# Usage


<a id="org5e18954"></a>

## Run Container

    docker run --rm --name s3-local -d -p 8080:8080 dfrkp/docker-s3rver


<a id="org649615c"></a>

## Create Bucket

    aws  s3 mb s3://foo --endpoint-url "http://localhost:8080"


<a id="org45466c2"></a>

## List Bucket

    aws  s3 ls s3:// --endpoint-url "http://localhost:8080"   

