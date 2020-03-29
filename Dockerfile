#la imagen con que vamos a trabajar en la de python3
FROM python:3
#son las variables de entorno
ENV PYTHONUNBUFFERED 1
#crea el directorio donde se van a ejecutar todas las acciones (el contenedor)
WORKDIR /code
#copia el archivo de requerimientos a la carpeta del contenedor
COPY requirements.txt /code/
#corre el comando para instalar los requerimientos
RUN pip install -r requirements.txt