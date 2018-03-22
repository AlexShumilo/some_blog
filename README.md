# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - 2.4.3
* Rails version - 5.1.5

Блог с возможностью добавлять/удалять записи.

Добавлены зависимости (gems):
- gem 'bootstrap', '~> 4.0.0' (стили)
- gem 'carrierwave', '~> 1.0' (загрузка изображений)

Добавлены файлы:
- models/post.rb (общий класс для записей; запись объектов класса в БД);
- controllers/posts_controller.rb (обработчики объектов класса);
- views/posts/index.html.erb (основная страница с выводом всех записей);
- views/posts/show.html.erb (страница с выводом одной записи);
- views/posts/new.html.erb (страница с формой создания записи);
- views/posts/_form.html.erb (разметка общей формы);
- views/posts/_post.html.erb (разметка страницы записи);
- views/posts/edit.html.erb (страница изменения записи);
- stylesheets/posts.scss (стили);
- uploaders/image_uploader.rb (файл загрузчика изображений)


* Database creation - posts