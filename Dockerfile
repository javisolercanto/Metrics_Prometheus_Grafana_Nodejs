# Imagen sobre la que nos basamos
FROM node:alpine3.10

# Definimos el directorio de trabajo
WORKDIR /myapp

# Copiamos los archivos de nuestro proyecto 
COPY ./src ./

# Exponemos el puerto 3000 sobre que se ejecuta nuestro proyecto
EXPOSE 3000

# Ejecutamos el comando para instalar las dependencias necesarias
RUN npm install

# Ejecutamos el comando necesario para arrancar el servidor
CMD ["node", "app.js"]




