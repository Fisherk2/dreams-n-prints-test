# Use Apache as base image
FROM httpd:2.4

# Copiar los archivos de tu proyecto al directorio raíz del servidor web
COPY . /usr/local/apache2/htdocs/

# Establecer los permisos correctos para los archivos
RUN chown -R www-data:www-data /usr/local/apache2/htdocs

# Exponer el puerto 80 para las solicitudes HTTP
EXPOSE 80