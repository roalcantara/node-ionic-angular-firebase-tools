FROM node:carbon

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.license="MIT" \
      org.label-schema.name="yarn-angular-cli-firebase-tools" \
      org.label-schema.description="Auto-updating Docker image based on NodeJS official image with Ionic, Angular CLI and Firebase Tools installed." \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/roalcantara/node-ionic-angular-firebase-tools" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

# Commands
RUN npm install -g ionic@latest @angular/cli@latest firebase-tools@latest