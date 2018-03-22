class Post < ApplicationRecord

	#Подключаем загрузчик изображений
	mount_uploader :image, ImageUploader

	#Устанавливаем валидацию полей поста, с обязательным условием: должны быть заполнены
	validates :title, :summary, :body, presence: true
end
