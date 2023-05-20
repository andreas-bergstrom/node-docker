ARG RUN_IMAGE=gcr.io/distroless/nodejs20-debian11

# Create final production stage
FROM $RUN_IMAGE AS run-env
WORKDIR /usr/app
COPY index.js ./index.js

CMD ["index.js"]