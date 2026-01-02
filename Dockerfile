FROM node:18-alpine
WORKDIR /app
COPY frontend.js .
EXPOSE 3000
CMD ["node", "frontend.js"]