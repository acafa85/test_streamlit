# Usar una imagen base de Python 3.9
FROM python:3.9-slim

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el archivo requirements.txt y el archivo app.py a /app
COPY requirements.txt .
COPY app.py .

# Instalar las dependencias desde el archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto que usará la app
EXPOSE 8080

# Comando para correr la aplicación en el puerto 8080
CMD ["streamlit", "run", "app.py", "--server.port=8080", "--server.enableCORS=false"]