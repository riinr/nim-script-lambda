# Nim Script for AWS Lambda

A [custom runtime](https://aws.amazon.com/about-aws/whats-new/2018/11/aws-lambda-now-supports-custom-runtimes-and-layers/)
for AWS Lambda to execute functions in Nim Script

## Getting Started

Save as `index.nims`:

```nim
import json

proc handler* = async(event, context): JsonNode {.async.} =
  %* "Hi from Nims on Lambda!"
```

Then bundle up into a zipfile – this is your function bundle:

```sh
zip -yr lambda.zip index.nims
```

Create a new Lambda function and choose the custom runtime option.

![Create lambda](https://raw.githubusercontent.com/lambci/node-custom-lambda/master/img/create.png "Create lambda screenshot")

Select your `lambda.zip` as the "Function code" and make the handler "index.handler".

![Function code](https://raw.githubusercontent.com/lambci/node-custom-lambda/master/img/function_code.png "Function code setup screenshot")

Then click on Layers and choose "Add a layer"


## Original version
[lambci/node-custom-lambda](https://github.com/lambci/node-custom-lambda)
