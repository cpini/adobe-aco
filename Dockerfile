ARG NODE_VERSION=""
FROM node:${NODE_VERSION:+${NODE_VERSION}-}slim
LABEL maintainer="Cristian Pini"
WORKDIR /app
COPY . .
RUN npm config set strict-ssl false 
RUN npm install
RUN npm -g install @adobe/aem-cli
RUN touch /root/.gitconfig
CMD [ "npm", "start" ]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
