FROM node:18-alpine
WORKDIR /app
COPY frontend.js .
EXPOSE 6000
CMD ["node", "frontend.js"]