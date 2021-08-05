import json
# import epsagon

# epsagon.init(
#     token='<TOKEN>',
#     app_name='js-lambda-docker-auto-instrument',
#     metadata_only=False,
#     debug=True
# )

# @epsagon.lambda_wrapper
def handler(event, context):
    body = {
        "message": "Hello, world! Your function executed successfully!",
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response
