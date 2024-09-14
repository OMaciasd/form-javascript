# Dockerfile

# Usa la imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instala las dependencias necesarias
RUN pip install -r requirements.txt

# Copia todo el contenido del directorio actual al contenedor en /app
COPY . .

# Expone el puerto 5000 para que Flask pueda ser accesible
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]
