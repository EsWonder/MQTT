# Usar la imagen base de Ruby
FROM ruby:3.2

# Configurar el directorio de trabajo
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copiar el archivo de la aplicación
COPY app.rb .

# Comando para ejecutar la aplicación
CMD ["ruby", "app.rb"]
