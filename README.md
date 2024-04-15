# README

Wave Ruby on Rails es el backend de la app.

Things you may want to cover:

* Ruby version: 3.1

Para instalar las dependencias, primero:

### `bundle install`

Para crear la estructura de la base de datos SQLite3:

### `rails db:migrate`

Para ejecutar la tarea de ejecución (en una terminal paralela al paso siguiente):

### `bundle exec sidekiq`
Nota: Es requerido Redis en localhost, puerto:6379. La tarea se ejecutará cada 10 minutos, encolandosé en la base de datos Redis.

Para ejecutar el servidor (en una terminal paralela al paso anterior):

### `rails server`
