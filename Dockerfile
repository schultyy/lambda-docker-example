FROM public.ecr.aws/lambda/python:3.8

COPY requirements.txt app.py ./
RUN python3.8 -m pip install -r requirements.txt -t .


ENV EPSAGON_TOKEN <TOKEN>
ENV EPSAGON_APP_NAME js-lambda-docker-auto-instrument
ENV EPSAGON_METADATA=FALSE
ENV AUTOWRAPT_BOOTSTRAP=epsagon
ENV EPSAGON_DEBUG=TRUE

# You can overwrite command in `serverless.yml` template
CMD ["app.handler"]
