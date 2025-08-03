FROM node:18-alpine

WORKDIR /app

# התקנת http-server
RUN npm install -g http-server

# העתקת כל הקבצים
COPY . .

# חשיפת פורט
EXPOSE 3000

# הפעלת השרת
CMD ["http-server", "-p", "3000"]
