# simple_carrierwave

### Описание

Гем [CarrierWave]([GitHub - carrierwaveuploader/carrierwave: Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks](https://github.com/carrierwaveuploader/carrierwave)) предоставляет простой и чрезвычайно гибкий способ загрузки файлов. Он хорошо работает с веб-приложениями на основе Rack, такими как Ruby on Rails. 

### Гемы проекта

* carrierwave

* better_errors 

* simple_form 

* bulma-rails 

* mini_magick 

#### Модель [User]

* name:string  

* age:integer 

* email:string  

* image:string   - в случае sqlite 



## Интеграция гемов

##### simple_form

```ruby
bundle install
```

после этого необходимо интегрировать simple_form с помощью команды 

``` ruby 
rails genarate simple_form:install
```

##### carrierwave

Carrierwave хранит свою конфигурацию внутри *загрузчиков*, включенных в модели. Чтобы создать загрузчик,  выполним команду

```ruby
rails generate uploader [имя]
```



Чтобы обрезать и масштабировать изображения, используется отдельный инструмент. Из коробки Carrierwave имеет поддержку гемов [RMagick](https://github.com/rmagick) и [MiniMagick](https://github.com/minimagick/minimagick), которые, в свою очередь, используются для управления изображениями с помощью [ImageMagick](https://www.imagemagick.org/)

##### uploaders/name_uploader.rb

```ruby
include CarrierWave::MiniMagick
```

## Результат

![Screenshot1](/home/dima/prog/rails/simple_carrierwave/2%20screen.png)



![Screeshot2](/home/dima/prog/rails/simple_carrierwave/image_screen.png)
